import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:octonote/application/constants/layout_values.dart';
import 'package:octonote/domain/models/component/component.dart';
import 'package:octonote/domain/models/note_page/note_page.dart';
import 'package:octonote/presentation/menu/bloc/menu_bloc.dart';
import 'package:octonote/presentation/notepad/bloc/notepad_bloc.dart';
import 'package:octonote/presentation/octo_editor/view/octo_editor_view.dart';
import 'package:octonote/presentation/widgets/component_content/text_component.dart';
import 'package:octonote/presentation/widgets/notepad_app_bar.dart';

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
          body: OctoEditor(),
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
        WidgetsBinding.instance.addPostFrameCallback((_) {
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
