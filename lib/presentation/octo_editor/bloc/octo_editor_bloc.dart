import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:octonote/application/utils/debouncer.dart';
import 'package:super_editor/super_editor.dart';

part 'octo_editor_bloc.freezed.dart';
part 'octo_editor_event.dart';
part 'octo_editor_state.dart';

class OctoEditorBloc extends Bloc<OctoEditorEvent, OctoEditorState> {
  OctoEditorBloc({required this.onSaveDocument, required Document initialDocument})
      : super(const _OctoEditorState()) {
    initState(initialDocument);
    on<_HideOrShowToolbar>(_onHideOrShowToolbar);
    on<_ShowEditorToolbar>(_onShowEditorToolbar);
    on<_HideEditorToolbar>(_onHideEditorToolbar);
    on<_Cut>(_onCut);
    on<_Copy>(_onCopy);
    on<_Paste>(_onPaste);
    on<_SelectAll>(_onSelectAll);
    on<_ShowImageToolbar>(_onShowImageToolbar);
    on<_HideImageToolbar>(_onHideImageToolbar);
  }
  final GlobalKey docLayoutKey = GlobalKey();

  late Document doc;
  late DocumentEditor docEditor;
  late DocumentComposer composer;
  late CommonEditorOperations docOps;

  late FocusNode editorFocusNode;

  late ScrollController scrollController;

  OverlayEntry? textFormatBarOverlayEntry;
  final textSelectionAnchor = ValueNotifier<Offset?>(null);

  OverlayEntry? imageFormatBarOverlayEntry;
  final imageSelectionAnchor = ValueNotifier<Offset?>(null);

  late Debouncer _saveDebouncer;

  final void Function(Document) onSaveDocument;

  void initState(Document document) {
    doc = document..addListener(_onDocumentChangeUdpate);
    docEditor = DocumentEditor(document: doc as MutableDocument);
    composer = DocumentComposer()
      ..addListener(() => add(const OctoEditorEvent.hideOrShowToolbar()));
    docOps = CommonEditorOperations(
      editor: docEditor,
      composer: composer,
      documentLayoutResolver: () => docLayoutKey.currentState as DocumentLayout,
    );
    editorFocusNode = FocusNode();
    scrollController = ScrollController()
      ..addListener(() => add(const OctoEditorEvent.hideOrShowToolbar()));
    _saveDebouncer = Debouncer(milliseconds: 1000);
  }

  void _onDocumentChangeUdpate() {
    add(const OctoEditorEvent.hideOrShowToolbar());
    _saveDebouncer.run(() {
      onSaveDocument(doc);
    });
  }

  @override
  Future<void> close() {
    if (textFormatBarOverlayEntry != null) {
      textFormatBarOverlayEntry!.remove();
    }

    scrollController.dispose();
    editorFocusNode.dispose();
    composer.dispose();
    return super.close();
  }

  void _onHideOrShowToolbar(OctoEditorEvent event, Emitter<OctoEditorState> emit) {
    if (_gestureMode != DocumentGestureMode.mouse) {
      // We only add our own toolbar when using mouse. On mobile, a bar
      // is rendered for us.
      return;
    }

    final selection = composer.selection;
    if (selection == null) {
      // Nothing is selected. We don't want to show a toolbar
      // in this case.
      add(const OctoEditorEvent.hideEditorToolbar());
      return;
    }
    if (selection.base.nodeId != selection.extent.nodeId) {
      // More than one node is selected. We don't want to show
      // a toolbar in this case.
      add(const OctoEditorEvent.hideEditorToolbar());
      add(const OctoEditorEvent.hideImageToolbar());
      return;
    }
    if (selection.isCollapsed) {
      // We only want to show the toolbar when a span of text
      // is selected. Therefore, we ignore collapsed selections.
      add(const OctoEditorEvent.hideEditorToolbar());
      add(const OctoEditorEvent.hideImageToolbar());
      return;
    }

    final selectedNode = doc.getNodeById(selection.extent.nodeId);

    if (selectedNode is ImageNode) {
      // Show the editor's toolbar for image sizing.
      add(const OctoEditorEvent.showImageToolbar());
      add(const OctoEditorEvent.hideEditorToolbar());
      return;
    } else {
      // The currently selected content is not an image. We don't
      // want to show the image toolbar.
      add(const OctoEditorEvent.hideImageToolbar());
    }

    if (selectedNode is TextNode) {
      // Show the editor's toolbar for text styling.
      add(const OctoEditorEvent.showEditorToolbar());
      add(const OctoEditorEvent.hideImageToolbar());
      return;
    } else {
      // The currently selected content is not a paragraph. We don't
      // want to show a toolbar in this case.
      add(const OctoEditorEvent.hideEditorToolbar());
    }
  }

  void _onShowEditorToolbar(OctoEditorEvent event, Emitter<OctoEditorState> emit) {
    emit(state.copyWith(showEditorToolBar: true));
  }

  void _onHideEditorToolbar(OctoEditorEvent event, Emitter<OctoEditorState> emit) {
    emit(state.copyWith(showEditorToolBar: false));
  }

  void _onCut(OctoEditorEvent event, Emitter<OctoEditorState> emit) => docOps.cut();
  void _onCopy(OctoEditorEvent event, Emitter<OctoEditorState> emit) => docOps.copy();
  void _onPaste(OctoEditorEvent event, Emitter<OctoEditorState> emit) => docOps.paste();
  void _onSelectAll(OctoEditorEvent event, Emitter<OctoEditorState> emit) => docOps.selectAll();

  FutureOr<void> _onShowImageToolbar(OctoEditorEvent event, Emitter<OctoEditorState> emit) {
    emit(state.copyWith(showImageToolBar: true));
  }

  FutureOr<void> _onHideImageToolbar(OctoEditorEvent event, Emitter<OctoEditorState> emit) {
    emit(state.copyWith(showImageToolBar: false));
  }
}

extension OctoEditorBlocEx on OctoEditorBloc {
  DocumentGestureMode get _gestureMode {
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return DocumentGestureMode.android;
      case TargetPlatform.iOS:
        return DocumentGestureMode.iOS;
      case TargetPlatform.fuchsia:
      case TargetPlatform.linux:
      case TargetPlatform.macOS:
      case TargetPlatform.windows:
        return DocumentGestureMode.mouse;
    }
  }

  bool get _isMobile => _gestureMode != DocumentGestureMode.mouse;

  DocumentInputSource get _inputSource {
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
      case TargetPlatform.iOS:
      case TargetPlatform.fuchsia:
      case TargetPlatform.linux:
      case TargetPlatform.macOS:
      case TargetPlatform.windows:
        return DocumentInputSource.ime;
      // return DocumentInputSource.keyboard;
    }
  }
}
