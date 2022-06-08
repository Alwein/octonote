import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:super_editor/super_editor.dart';

part 'octo_editor_bloc.freezed.dart';
part 'octo_editor_event.dart';
part 'octo_editor_state.dart';

class OctoEditorBloc extends Bloc<OctoEditorEvent, OctoEditorState> {
  OctoEditorBloc() : super(const _Initial()) {
    on<OctoEditorEvent>(_onHideOrShowToolbar);
    on<OctoEditorEvent>(_onShowEditorToolbar);
    on<OctoEditorEvent>(_onHideEditorToolbar);
    on<OctoEditorEvent>(_onCut);
    on<OctoEditorEvent>(_onCopy);
    on<OctoEditorEvent>(_onPaste);
    on<OctoEditorEvent>(_onSelectAll);
    on<OctoEditorEvent>(_onShowImageToolbar);
    on<OctoEditorEvent>(_onHideImageToolbar);
  }
  final GlobalKey _docLayoutKey = GlobalKey();

  late Document _doc;
  late DocumentEditor _docEditor;
  late DocumentComposer _composer;
  late CommonEditorOperations _docOps;

  late FocusNode _editorFocusNode;

  late ScrollController _scrollController;

  OverlayEntry? _textFormatBarOverlayEntry;
  final _textSelectionAnchor = ValueNotifier<Offset?>(null);

  OverlayEntry? _imageFormatBarOverlayEntry;
  final _imageSelectionAnchor = ValueNotifier<Offset?>(null);

  void initState(Document document) {
    _doc = document..addListener(() => add(const OctoEditorEvent.hideOrShowToolbar()));
    _docEditor = DocumentEditor(document: _doc as MutableDocument);
    _composer = DocumentComposer()
      ..addListener(() => add(const OctoEditorEvent.hideOrShowToolbar()));
    _docOps = CommonEditorOperations(
      editor: _docEditor,
      composer: _composer,
      documentLayoutResolver: () => _docLayoutKey.currentState as DocumentLayout,
    );
    _editorFocusNode = FocusNode();
    _scrollController = ScrollController()
      ..addListener(() => add(const OctoEditorEvent.hideOrShowToolbar()));
  }

  void _onHideOrShowToolbar(OctoEditorEvent event, Emitter<OctoEditorState> emit) {
    if (_gestureMode != DocumentGestureMode.mouse) {
      // We only add our own toolbar when using mouse. On mobile, a bar
      // is rendered for us.
      return;
    }

    final selection = _composer.selection;
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

    final selectedNode = _doc.getNodeById(selection.extent.nodeId);

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
    // TODO: implements me and add bool in state
  }

  void _onHideEditorToolbar(OctoEditorEvent event, Emitter<OctoEditorState> emit) {
    // Null out the selection anchor so that when it re-appears,
    // the bar doesn't momentarily "flash" at its old anchor position.
    _textSelectionAnchor.value = null;

    if (_textFormatBarOverlayEntry != null) {
      // Remove the toolbar overlay and null-out the entry.
      // We null out the entry because we can't query whether
      // or not the entry exists in the overlay, so in our
      // case, null implies the entry is not in the overlay,
      // and non-null implies the entry is in the overlay.
      _textFormatBarOverlayEntry!.remove();
      _textFormatBarOverlayEntry = null;
    }

    // Ensure that focus returns to the editor.
    //
    // I tried explicitly unfocus()'ing the URL textfield
    // in the toolbar but it didn't return focus to the
    // editor. I'm not sure why.
    _editorFocusNode.requestFocus();
  }

  void _onCut(OctoEditorEvent event, Emitter<OctoEditorState> emit) => _docOps.cut();
  void _onCopy(OctoEditorEvent event, Emitter<OctoEditorState> emit) => _docOps.copy();
  void _onPaste(OctoEditorEvent event, Emitter<OctoEditorState> emit) => _docOps.paste();
  void _onSelectAll(OctoEditorEvent event, Emitter<OctoEditorState> emit) => _docOps.selectAll();
  FutureOr<void> _onShowImageToolbar(OctoEditorEvent event, Emitter<OctoEditorState> emit) {}

  FutureOr<void> _onHideImageToolbar(OctoEditorEvent event, Emitter<OctoEditorState> emit) {
    // Null out the selection anchor so that when the bar re-appears,
    // it doesn't momentarily "flash" at its old anchor position.
    _imageSelectionAnchor.value = null;

    if (_imageFormatBarOverlayEntry != null) {
      // Remove the image toolbar overlay and null-out the entry.
      // We null out the entry because we can't query whether
      // or not the entry exists in the overlay, so in our
      // case, null implies the entry is not in the overlay,
      // and non-null implies the entry is in the overlay.
      _imageFormatBarOverlayEntry!.remove();
      _imageFormatBarOverlayEntry = null;
    }

    // Ensure that focus returns to the editor.
    _editorFocusNode.requestFocus();
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
