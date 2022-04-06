import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:octonote/application/constants/colors.dart';
import 'package:octonote/application/constants/layout_values.dart';
import 'package:octonote/domain/models/note_page/note_page.dart';
import 'package:octonote/presentation/menu/bloc/menu_bloc.dart';
import 'package:octonote/presentation/notepad/bloc/notepad_bloc.dart';
import 'package:octonote/presentation/widgets/loading.dart';
import 'package:octonote/presentation/widgets/menu_app_bar.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final backGroundColor = Theme.of(context).scaffoldBackgroundColor;
    return BlocConsumer<MenuBloc, MenuState>(
      listenWhen: (previous, current) => previous.notePageSelected != current.notePageSelected,
      listener: (context, state) => context
          .read<NotePadBloc>()
          .add(NotePadEvent.fetchStarted(notePage: state.notePageSelected)),
      builder: (context, state) {
        return Scaffold(
          backgroundColor: backGroundColor,
          appBar: MenuAppBar(),
          body: state.status.map(
            initial: (state) => Container(),
            fetchInProgress: (state) => const Center(child: Loading()),
            success: (state) => const NotePageListView(),
            error: (state) => const MenuErrorDisclaimer(),
          ),
        );
      },
    );
  }
}

class NotePageListView extends StatelessWidget {
  const NotePageListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MenuBloc, MenuState>(
      builder: (context, state) {
        return Column(
          children: [
            const MenuDivider(),
            const CreateNotePage(),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: state.notePages.length,
                itemBuilder: (context, index) {
                  final NotePage currentNotePage = state.notePages[index];
                  return NotePageTile(
                    notePage: currentNotePage,
                    isSelected: currentNotePage == state.notePageSelected,
                    onSelected: (notePage) {
                      context.read<MenuBloc>().add(MenuEvent.notePageSelected(notePage: notePage));
                    },
                  );
                },
              ),
            ),
          ],
        );
      },
    );
  }
}

class NotePageTile extends StatelessWidget {
  const NotePageTile({Key? key, required this.notePage, this.onSelected, this.isSelected = false})
      : super(key: key);
  final NotePage notePage;
  final void Function(NotePage notePage)? onSelected;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onSelected!(notePage),
      child: Container(
        color: isSelected ? Colors.grey.withOpacity(0.1) : null,
        padding: const EdgeInsets.symmetric(
          horizontal: LayoutValues.horizontalPadding,
          vertical: 5,
        ),
        child: Row(
          children: [
            const Icon(Icons.keyboard_arrow_right_rounded),
            const SizedBox(
              width: 5,
            ),
            Text(notePage.title, style: Theme.of(context).textTheme.headline6),
          ],
        ),
      ),
    );
  }
}

class MenuDivider extends StatelessWidget {
  const MenuDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Divider(
      height: 0,
      color: OctonoteColors.textColor.withAlpha(40),
    );
  }
}

class CreateNotePage extends StatelessWidget {
  const CreateNotePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.read<MenuBloc>().add(const MenuEvent.createEmptyNotePage()),
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: LayoutValues.horizontalPadding,
          vertical: 5,
        ),
        child: Row(
          children: [
            const Icon(Icons.add_rounded),
            const SizedBox(
              width: 5,
            ),
            Text("Ajouter une page", style: Theme.of(context).textTheme.headline6),
          ],
        ),
      ),
    );
  }
}

class MenuErrorDisclaimer extends StatelessWidget {
  const MenuErrorDisclaimer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              const Icon(Icons.error_outline),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: Text(
                  "Une erreur est survenue pendant le chargement", //FIXME: trad
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          TextButton.icon(
            style: TextButton.styleFrom(
              backgroundColor: Colors.grey.withOpacity(0.2),
              padding: const EdgeInsets.all(8),
            ),
            onPressed: () => context.read<MenuBloc>().add(const MenuEvent.fetchStarted()),
            icon: Icon(
              Icons.autorenew_rounded,
              size: 18,
              color: Theme.of(context).textTheme.headline6!.color,
            ),
            label: Text(
              "Retry", //FIXME: trad
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
        ],
      ),
    );
  }
}
