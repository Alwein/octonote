import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:octonote/application/constants/layout_values.dart';
import 'package:octonote/domain/models/component/component.dart';
import 'package:octonote/domain/models/note_page/note_page.dart';
import 'package:octonote/presentation/menu/bloc/menu_bloc.dart';
import 'package:octonote/presentation/notepad/bloc/notepad_bloc.dart';
import 'package:octonote/presentation/widgets/component_content/text_component.dart';
// import 'package:octonote/presentation/widgets/error_widgets/fetch_error.dart';
// import 'package:octonote/presentation/widgets/loading.dart';
import 'package:octonote/presentation/widgets/notepad_app_bar.dart';
import 'package:super_editor/super_editor.dart';

class Notepad extends StatelessWidget {
  const Notepad({Key? key, this.drawer}) : super(key: key);
  final Widget? drawer;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotePadBloc, NotePadState>(
      builder: (context, state) {
        return Scaffold(
          drawer: drawer,
          backgroundColor: Theme.of(context).backgroundColor,
          appBar: NotepadAppBar(),
          body: const TextEditor(),
          // body: state.status.map(
          //   initial: (_) => Container(),
          //   fetchInProgress: (_) => const Center(child: Loading()),
          //   success: (_) => ContentView(
          //     key: ValueKey(state.notePage.id),
          //   ),
          //   error: (_) => ErrorDisclaimer(
          //     onRetry: () => context
          //         .read<NotePadBloc>()
          //         .add(NotePadEvent.fetchStarted(notePage: state.notePage)),
          //   ),
          // ),
        );
      },
    );
  }
}

Document createInitialDocument() {
  return MutableDocument(
    nodes: [
      ImageNode(
        id: "1",
        imageUrl: 'https://i.ibb.co/5nvRdx1/flutter-horizon.png',
        metadata: const SingleColumnLayoutComponentStyles(
          width: double.infinity,
          padding: EdgeInsets.zero,
        ).toMetadata(),
      ),
      ParagraphNode(
        id: DocumentEditor.createNodeId(),
        text: AttributedText(
          text: 'Welcome to Super Editor 💙 🚀',
        ),
        metadata: {
          'blockType': header1Attribution,
        },
      ),
      ParagraphNode(
        id: DocumentEditor.createNodeId(),
        text: AttributedText(
          text:
              "Super Editor is a toolkit to help you build document editors, document layouts, text fields, and more.",
        ),
      ),
      ParagraphNode(
        id: DocumentEditor.createNodeId(),
        text: AttributedText(
          text: 'Ready-made solutions 📦',
        ),
        metadata: {
          'blockType': header2Attribution,
        },
      ),
      ListItemNode.unordered(
        id: DocumentEditor.createNodeId(),
        text: AttributedText(
          text: 'SuperEditor is a ready-made, configurable document editing experience.',
        ),
      ),
      ListItemNode.unordered(
        id: DocumentEditor.createNodeId(),
        text: AttributedText(
          text: 'SuperTextField is a ready-made, configurable text field.',
        ),
      ),
      ParagraphNode(
        id: DocumentEditor.createNodeId(),
        text: AttributedText(
          text: 'Quickstart 🚀',
        ),
        metadata: {
          'blockType': header2Attribution,
        },
      ),
      ParagraphNode(
        id: DocumentEditor.createNodeId(),
        text: AttributedText(
          text: 'To get started with your own editing experience, take the following steps:',
        ),
      ),
      ParagraphNode(
        id: DocumentEditor.createNodeId(),
        text: AttributedText(
          text:
              "Now, you're off to the races! SuperEditor renders your document, and lets you select, insert, and delete content.",
        ),
      ),
      ParagraphNode(
        id: DocumentEditor.createNodeId(),
        text: AttributedText(
          text: 'Explore the toolkit 🔎',
        ),
        metadata: {
          'blockType': header2Attribution,
        },
      ),
      ListItemNode.unordered(
        id: DocumentEditor.createNodeId(),
        text: AttributedText(
          text: "Use MutableDocument as an in-memory representation of a document.",
        ),
      ),
      ListItemNode.unordered(
        id: DocumentEditor.createNodeId(),
        text: AttributedText(
          text: "Implement your own document data store by implementing the Document api.",
        ),
      ),
      ListItemNode.unordered(
        id: DocumentEditor.createNodeId(),
        text: AttributedText(
          text:
              "Implement your down DocumentLayout to position and size document components however you'd like.",
        ),
      ),
      ListItemNode.unordered(
        id: DocumentEditor.createNodeId(),
        text: AttributedText(
          text: "Use SuperSelectableText to paint text with selection boxes and a caret.",
        ),
      ),
      ListItemNode.unordered(
        id: DocumentEditor.createNodeId(),
        text: AttributedText(
          text: 'Use AttributedText to quickly and easily apply metadata spans to a string.',
        ),
      ),
      ParagraphNode(
        id: DocumentEditor.createNodeId(),
        text: AttributedText(
          text:
              "We hope you enjoy using Super Editor. Let us know what you're building, and please file issues for any bugs that you find.",
        ),
      ),
    ],
  );
}

class TextEditor extends StatefulWidget {
  const TextEditor({Key? key}) : super(key: key);

  @override
  State<TextEditor> createState() => _TextEditorState();
}

class _TextEditorState extends State<TextEditor> {
  final DocumentEditor docEditor =
      DocumentEditor(document: createInitialDocument() as MutableDocument);

// Next: pass the docEditor to your Editor widget.
  @override
  Widget build(BuildContext context) {
    return SuperEditor(editor: docEditor);
  }
}

class ContentView extends StatefulWidget {
  const ContentView({Key? key}) : super(key: key);

  @override
  State<ContentView> createState() => _ContentViewState();
}

class _ContentViewState extends State<ContentView> {
  late final FocusNode notePadFocusNode;

  @override
  void initState() {
    super.initState();
    notePadFocusNode = FocusNode();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NotePadBloc, NotePadState>(
      listenWhen: (previous, current) =>
          previous.componentSelected?.id != current.componentSelected?.id,
      listener: (context, state) {
        if (!notePadFocusNode.hasFocus) {
          notePadFocusNode.unfocus();
        }
        WidgetsBinding.instance!.addPostFrameCallback((_) {
          notePadFocusNode.requestFocus();
        });
      },
      builder: (context, state) {
        if (state.notePage == const NotePage.empty()) {
          return Center(
            child: Text(
              tr("note_pad.please_select_note"),
              style: Theme.of(context).textTheme.subtitle2!.copyWith(color: Colors.grey),
            ),
          );
        }

        return CustomScrollView(
          slivers: [
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: LayoutValues.horizontalPadding),
                    child: Column(
                      children: [
                        const NoteTitle(),
                        ListView.builder(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          physics: const ClampingScrollPhysics(),
                          itemCount: state.components.length,
                          itemBuilder: (context, index) {
                            final Component currentComponent = state.components[index];
                            final bool isSlected = currentComponent == state.componentSelected;
                            return ComponentBuilder(
                              key: ValueKey(currentComponent.id),
                              component: state.components[index],
                              focusNode: isSlected ? notePadFocusNode : null,
                            );
                          },
                        ),
                        const AddComponentBlankZone()
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  void dispose() {
    notePadFocusNode.dispose();
    super.dispose();
  }
}

class NoteTitle extends StatelessWidget {
  const NoteTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MenuBloc, MenuState>(
      builder: (context, state) {
        final NotePage currentNotePage = state.notePageSelected;
        return TextFormField(
          key: ValueKey("NoteTitle${currentNotePage.id}"),
          initialValue: currentNotePage.title,
          decoration: InputDecoration(
            hintText: tr("note_page.untitled"),
            isDense: true,
            contentPadding: const EdgeInsets.symmetric(vertical: 20),
            border: InputBorder.none,
          ),
          style: Theme.of(context).textTheme.headline2,
          keyboardType: TextInputType.text,
          onChanged: (value) => context
              .read<MenuBloc>()
              .add(MenuEvent.updatePage(notePage: currentNotePage.copyWith(title: value))),
        );
      },
    );
  }
}

class ComponentBuilder extends StatelessWidget {
  const ComponentBuilder({Key? key, required this.component, this.focusNode}) : super(key: key);
  final Component component;
  final FocusNode? focusNode;

  @override
  Widget build(BuildContext context) {
    return component.content.map(
      text: (content) => TextComponentView(
        component: content,
        focusNode: focusNode,
        onChanged: (value) => context.read<NotePadBloc>().add(
              NotePadEvent.updateComponent(
                component: component.copyWith(content: content.copyWith(text: value)),
              ),
            ),
        onDeleteComponent: () => context.read<NotePadBloc>().add(
              NotePadEvent.removeComponent(
                component: component,
              ),
            ),
      ),
      title1: (content) => const Text('Implements me'),
      title2: (content) => const Text('Implements me'),
      title3: (content) => const Text('Implements me'),
      bulletedList: (content) => const Text('Implements me'),
      citation: (content) => const Text('Implements me'),
      todo: (content) => const Text('Implements me'),
    );
  }
}

class AddComponentBlankZone extends StatelessWidget {
  const AddComponentBlankZone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NotePadSelectableArea(
      minLines: 10,
      maxLines: 10,
      readOnly: true,
      onTap: () => context.read<NotePadBloc>().add(
            NotePadEvent.createEmptyComponent(
              index: context.read<NotePadBloc>().state.components.length,
            ),
          ),
    );
  }
}
