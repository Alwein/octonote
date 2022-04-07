import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:octonote/application/constants/layout_values.dart';
import 'package:octonote/domain/models/component/component.dart';
import 'package:octonote/domain/models/note_page/note_page.dart';
import 'package:octonote/presentation/menu/bloc/menu_bloc.dart';
import 'package:octonote/presentation/notepad/bloc/notepad_bloc.dart';
import 'package:octonote/presentation/widgets/component_content/text_component.dart';
import 'package:octonote/presentation/widgets/error_widgets/fetch_error.dart';
import 'package:octonote/presentation/widgets/loading.dart';
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
          body: state.status.map(
            initial: (_) => Container(),
            fetchInProgress: (_) => const Center(child: Loading()),
            success: (_) => const ContentView(),
            error: (_) => ErrorDisclaimer(
              onRetry: () => context
                  .read<NotePadBloc>()
                  .add(NotePadEvent.fetchStarted(notePage: state.notePage)),
            ),
          ),
        );
      },
    );
  }
}

class ContentView extends StatelessWidget {
  const ContentView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotePadBloc, NotePadState>(
      builder: (context, state) {
        if (state.notePage == const NotePage.empty()) {
          return Center(
            child: Text(
              tr("note_pad.please_select_note"),
              style: Theme.of(context).textTheme.subtitle2!.copyWith(color: Colors.grey),
            ),
          );
        }

        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: LayoutValues.horizontalPadding),
          child: Column(
            children: [
              const NoteTitle(),
              Expanded(
                child: ListView.builder(
                  itemCount: state.components.length,
                  itemBuilder: (context, index) {
                    return ComponentBuilder(
                      component: state.components[index],
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
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
          key: ValueKey(currentNotePage.id),
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
  const ComponentBuilder({Key? key, required this.component}) : super(key: key);
  final Component component;

  @override
  Widget build(BuildContext context) {
    return component.content.map(
      text: (content) => TextComponentView(component: content),
      title1: (content) => const Text('Implements me'),
      title2: (content) => const Text('Implements me'),
      title3: (content) => const Text('Implements me'),
      bulletedList: (content) => const Text('Implements me'),
      citation: (content) => const Text('Implements me'),
      todo: (content) => const Text('Implements me'),
    );
  }
}
