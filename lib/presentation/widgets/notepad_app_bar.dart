import 'package:flutter/material.dart';
import 'package:octonote/application/breakpoints.dart';

class NotepadAppBar extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;

  NotepadAppBar({Key? key})
      : preferredSize = const Size.fromHeight(36),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final bool desktopView = getSize(context).isGreatherThanMobile;
    return AppBar(
      elevation: 0,
      backgroundColor: Theme.of(context).backgroundColor,
      centerTitle: false,
      leading: desktopView
          ? null
          : IconButton(
              icon: Icon(
                Icons.menu,
                color: Theme.of(context).textTheme.headline5!.color,
              ),
              onPressed: () => Scaffold.of(context).openDrawer(),
            ),
      title: Text(
        'Note',
        style: Theme.of(context).textTheme.headline5,
      ),
    );
  }
}
