import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:octonote/application/utils/breakpoints.dart';
import 'package:octonote/domain/models/note_page/note_page.dart';
import 'package:octonote/presentation/menu/bloc/menu_bloc.dart';

class NotepadAppBar extends StatelessWidget with PreferredSizeWidget {
  NotepadAppBar({Key? key})
      : preferredSize = const Size.fromHeight(36),
        super(key: key);

  @override
  final Size preferredSize;

  @override
  Widget build(BuildContext context) {
    final bool desktopView = getSize(context).isGreatherThanMobile;
    return BlocBuilder<MenuBloc, MenuState>(
      builder: (context, state) {
        final NotePage currentPage = state.notePageSelected;
        return AppBar(
          elevation: 0,
          backgroundColor: Theme.of(context).backgroundColor,
          foregroundColor: Theme.of(context).textTheme.headline5!.color,
          centerTitle: false,
          leading: desktopView
              ? null
              : IconButton(
                  icon: const Icon(
                    Icons.menu,
                  ),
                  onPressed: () => Scaffold.of(context).openDrawer(),
                ),
          title: Text(
            currentPage.title != '' ? currentPage.title : tr("note_page.untitled"),
            style: Theme.of(context).textTheme.bodyText1,
          ),
          actions: [
            IconButton(
              onPressed: () async {
                final MenuBloc menuBloc = context.read<MenuBloc>();
                await showDialog(
                  context: context,
                  builder: (context) {
                    return DeleteNotePage(
                      onDelete: () => menuBloc.add(MenuEvent.removePage(notePage: currentPage)),
                    );
                  },
                );
              },
              icon: const Icon(Icons.delete_outline_rounded),
            )
          ],
        );
      },
    );
  }
}

class DeleteNotePage extends StatelessWidget {
  const DeleteNotePage({Key? key, this.onDelete}) : super(key: key);
  final void Function()? onDelete;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      title: Text(
        tr("note_pad.delete_note_page"),
        style: Theme.of(context).textTheme.headline5,
      ),
      content: Text(
        tr("note_pad.delete_note_page_subtitle"),
        style: Theme.of(context).textTheme.subtitle1,
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: Text(
            tr("note_pad.cancel"),
            style: Theme.of(context).textTheme.button,
          ),
        ),
        TextButton(
          onPressed: () {
            onDelete?.call();
            Navigator.of(context).pop();
          },
          child: Text(
            tr("note_pad.delete"),
            style: Theme.of(context).textTheme.button!.copyWith(color: Colors.red),
          ),
        ),
      ],
    );
  }
}
