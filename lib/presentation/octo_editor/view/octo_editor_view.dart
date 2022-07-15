import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:octonote/application/utils/serialize_nodes_to_components.dart';
import 'package:octonote/presentation/notepad/bloc/notepad_bloc.dart';
import 'package:octonote/presentation/octo_editor/bloc/octo_editor_bloc.dart';
import 'package:octonote/presentation/octo_editor/view/widgets/add_component_button.dart';
import 'package:octonote/presentation/octo_editor/widgets/tasks.dart';
import 'package:octonote/presentation/octo_editor/widgets/toolbar.dart';
import 'package:super_editor/super_editor.dart';

class OctoEditor extends StatefulWidget {
  const OctoEditor({Key? key}) : super(key: key);

  @override
  _OctoEditorState createState() => _OctoEditorState();
}

class _OctoEditorState extends State<OctoEditor> {
  OverlayEntry? _textFormatBarOverlayEntry;
  final _textSelectionAnchor = ValueNotifier<Offset?>(null);

  OverlayEntry? _imageFormatBarOverlayEntry;
  final _imageSelectionAnchor = ValueNotifier<Offset?>(null);

  void _showEditorToolbar(BuildContext context) {
    final OctoEditorBloc bloc = context.read<OctoEditorBloc>();
    if (_textFormatBarOverlayEntry == null) {
      // Create an overlay entry to build the editor toolbar.

      _textFormatBarOverlayEntry ??= OverlayEntry(
        builder: (context) {
          return EditorToolbar(
            anchor: _textSelectionAnchor,
            editor: bloc.docEditor,
            composer: bloc.composer,
            closeToolbar: () => bloc.add(const OctoEditorEvent.hideEditorToolbar()),
          );
        },
      );

      // Display the toolbar in the application overlay.
      final overlay = Overlay.of(context)!;
      overlay.insert(_textFormatBarOverlayEntry!);
    }

    // Schedule a callback after this frame to locate the selection
    // bounds on the screen and display the toolbar near the selected
    // text.
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      if (_textFormatBarOverlayEntry == null) {
        return;
      }

      final docBoundingBox = (bloc.docLayoutKey.currentState as DocumentLayout)
          .getRectForSelection(bloc.composer.selection!.base, bloc.composer.selection!.extent)!;
      final docBox = bloc.docLayoutKey.currentContext!.findRenderObject() as RenderBox;
      final overlayBoundingBox = Rect.fromPoints(
        docBox.localToGlobal(docBoundingBox.topLeft),
        docBox.localToGlobal(docBoundingBox.bottomRight),
      );

      _textSelectionAnchor.value = overlayBoundingBox.topCenter;
    });
  }

  void _hideEditorToolbar(BuildContext context) {
    final OctoEditorBloc bloc = context.read<OctoEditorBloc>();
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
    bloc.editorFocusNode.requestFocus();
  }

  void _showImageToolbar(BuildContext context) {
    final OctoEditorBloc bloc = context.read<OctoEditorBloc>();
    if (_imageFormatBarOverlayEntry == null) {
      // Create an overlay entry to build the image toolbar.
      _imageFormatBarOverlayEntry ??= OverlayEntry(
        builder: (context) {
          return ImageFormatToolbar(
            anchor: _imageSelectionAnchor,
            composer: bloc.composer,
            setWidth: (nodeId, width) {
              final node = bloc.doc.getNodeById(nodeId)!;
              final currentStyles = SingleColumnLayoutComponentStyles.fromMetadata(node);
              SingleColumnLayoutComponentStyles(
                width: width,
                padding: currentStyles.padding,
              ).applyTo(node);
            },
            closeToolbar: () => bloc.add(const OctoEditorEvent.hideImageToolbar()),
          );
        },
      );

      // Display the toolbar in the application overlay.
      final overlay = Overlay.of(context)!;
      overlay.insert(_imageFormatBarOverlayEntry!);
    }

    // Schedule a callback after this frame to locate the selection
    // bounds on the screen and display the toolbar near the selected
    // text.
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      if (_imageFormatBarOverlayEntry == null) {
        return;
      }

      final docBoundingBox = (bloc.docLayoutKey.currentState as DocumentLayout)
          .getRectForSelection(bloc.composer.selection!.base, bloc.composer.selection!.extent)!;
      final docBox = bloc.docLayoutKey.currentContext!.findRenderObject() as RenderBox;
      final overlayBoundingBox = Rect.fromPoints(
        docBox.localToGlobal(docBoundingBox.topLeft),
        docBox.localToGlobal(docBoundingBox.bottomRight),
      );

      _imageSelectionAnchor.value = overlayBoundingBox.center;
    });
  }

  void _hideImageToolbar(BuildContext context) {
    final OctoEditorBloc bloc = context.read<OctoEditorBloc>();
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
    bloc.editorFocusNode.requestFocus();
  }

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

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OctoEditorBloc(
        initialDocument:
            deserializeComponentsToDocuments(context.read<NotePadBloc>().state.components),
        onSaveDocument: (doc) {
          final NotePadBloc notePadBloc = context.read<NotePadBloc>();
          notePadBloc.add(
            NotePadEvent.saveAll(
              components: serializeDocumentToComponents(doc, notePadBloc.state.notePage),
            ),
          );
        },
      ),
      child: MultiBlocListener(
        listeners: [
          BlocListener<OctoEditorBloc, OctoEditorState>(
            listenWhen: (previous, current) =>
                previous.showEditorToolBar != current.showEditorToolBar,
            listener: (context, state) {
              if (state.showEditorToolBar) {
                _showEditorToolbar(context);
              } else {
                _hideEditorToolbar(context);
              }
            },
          ),
          BlocListener<OctoEditorBloc, OctoEditorState>(
            listenWhen: (previous, current) =>
                previous.showImageToolBar != current.showImageToolBar,
            listener: (context, state) {
              if (state.showEditorToolBar) {
                _showImageToolbar(context);
              } else {
                _hideImageToolbar(context);
              }
            },
          ),
        ],
        child: Column(
          children: [
            Expanded(
              child: _buildEditor(),
            ),
            const AddComponentButton(),
            const SizedBox(
              width: 20,
              height: 20,
            ),
            if (_isMobile) _buildMountedToolbar(),
          ],
        ),
      ),
    );
  }

  Widget _buildEditor() {
    return Builder(
      builder: (context) {
        final OctoEditorBloc bloc = context.read<OctoEditorBloc>();
        return SuperEditor(
          editor: bloc.docEditor,
          composer: bloc.composer,
          focusNode: bloc.editorFocusNode,
          scrollController: bloc.scrollController,
          documentLayoutKey: bloc.docLayoutKey,
          stylesheet: defaultStylesheet.copyWith(
            inlineTextStyler: (attributions, style) => style.merge(_textStyleBuilder(attributions)),
          ),
          componentBuilders: [
            HeaderWithHintComponentBuilder(bloc.doc),
            ...defaultComponentBuilders,
            TaskComponentBuilder(bloc.docEditor),
          ],
          gestureMode: _gestureMode,
          inputSource: _inputSource,
          keyboardActions: defaultKeyboardActions,
          androidToolbarBuilder: (_) => AndroidTextEditingFloatingToolbar(
            onCutPressed: () => bloc.add(const OctoEditorEvent.cut()),
            onCopyPressed: () => bloc.add(const OctoEditorEvent.copy()),
            onPastePressed: () => bloc.add(const OctoEditorEvent.paste()),
            onSelectAllPressed: () => bloc.add(const OctoEditorEvent.selectAll()),
          ),
          iOSToolbarBuilder: (_) => IOSTextEditingFloatingToolbar(
            onCutPressed: () => bloc.add(const OctoEditorEvent.cut()),
            onCopyPressed: () => bloc.add(const OctoEditorEvent.copy()),
            onPastePressed: () => bloc.add(const OctoEditorEvent.paste()),
          ),
        );
      },
    );
  }

  Widget _buildMountedToolbar() {
    return Builder(
      builder: (context) {
        final OctoEditorBloc bloc = context.read<OctoEditorBloc>();

        return MultiListenableBuilder(
          listenables: <Listenable>{
            bloc.doc,
            bloc.composer.selectionNotifier,
          },
          builder: (_) {
            final selection = bloc.composer.selection;

            if (selection == null) {
              return const SizedBox();
            }

            return KeyboardEditingToolbar(
              document: bloc.doc,
              composer: bloc.composer,
              commonOps: bloc.docOps,
            );
          },
        );
      },
    );
  }

  @override
  void dispose() {
    if (_textFormatBarOverlayEntry != null) {
      _textFormatBarOverlayEntry!.remove();
    }

    super.dispose();
  }
}

/// Styles to apply to all the text in the editor.
TextStyle _textStyleBuilder(Set<Attribution> attributions) {
  // We only care about altering a few styles. Start by getting
  // the standard styles for these attributions.
  var newStyle = defaultStyleBuilder(attributions);

  // Style headers
  for (final attribution in attributions) {
    if (attribution == header1Attribution) {
      newStyle = newStyle.copyWith(
        color: const Color(0xFF444444),
        fontSize: 48,
        fontWeight: FontWeight.bold,
      );
    } else if (attribution == header2Attribution) {
      newStyle = newStyle.copyWith(
        color: const Color(0xFF444444),
        fontSize: 30,
        fontWeight: FontWeight.bold,
      );
    } else if (attribution == header3Attribution) {
      newStyle = newStyle.copyWith(
        color: const Color(0xFF444444),
        fontSize: 16,
        fontWeight: FontWeight.bold,
      );
    }
  }

  return newStyle;
}

class HeaderWithHintComponentBuilder implements ComponentBuilder {
  const HeaderWithHintComponentBuilder(this.doc);

  final Document doc;

  @override
  SingleColumnLayoutComponentViewModel? createViewModel(Document document, DocumentNode node) {
    // This component builder can work with the standard paragraph view model.
    // We'll defer to the standard paragraph component builder to create it.
    return null;
  }

  @override
  Widget? createComponent(
    SingleColumnDocumentComponentContext componentContext,
    SingleColumnLayoutComponentViewModel componentViewModel,
  ) {
    if (componentViewModel is! ParagraphComponentViewModel) {
      return null;
    }

    final blockAttribution = componentViewModel.blockType;
    if (blockAttribution != header1Attribution) {
      return null;
    }
    // if (!(const [header1Attribution, header2Attribution, header3Attribution])
    //     .contains(blockAttribution)) {
    //   return null;
    // }
    final nodeIndex = doc.getNodeIndexById(componentViewModel.nodeId);
    if (nodeIndex > 0) {
      // This isn't the first node, we don't ever want to show hint text.
      return null;
    }

    final textSelection = componentViewModel.selection;

    return TextWithHintComponent(
      key: componentContext.componentKey,
      text: componentViewModel.text,
      textStyleBuilder: _textStyleBuilder,
      metadata: componentViewModel.blockType != null
          ? {
              'blockType': componentViewModel.blockType,
            }
          : {},
      // This is the text displayed as a hint.
      hintText: AttributedText(
        text: 'Sans titre', // FIXME: Trad
      ),
      // This is the function that selects styles for the hint text.
      hintStyleBuilder: (Set<Attribution> attributions) => _textStyleBuilder(attributions).copyWith(
        color: const Color(0xFFDDDDDD),
      ),
      textSelection: textSelection,
      selectionColor: componentViewModel.selectionColor,
      showCaret: componentViewModel.caret != null,
    );
  }
}
