import 'package:flutter/material.dart';
import 'package:octonote/application/constants/layout_values.dart';

class MenuAppBar extends StatelessWidget with PreferredSizeWidget {
  MenuAppBar({Key? key})
      : preferredSize = const Size.fromHeight(36),
        super(key: key);

  @override
  final Size preferredSize;

  @override
  Widget build(BuildContext context) {
    final backGroundColor = Theme.of(context).scaffoldBackgroundColor;
    return AppBar(
      foregroundColor: Theme.of(context).textTheme.headline6!.color,
      titleSpacing: LayoutValues.horizontalPadding,
      toolbarHeight: 36,
      backgroundColor: backGroundColor,
      elevation: 0,
      centerTitle: false,
      title: Text(
        '🐙  Octonote',
        style: Theme.of(context).textTheme.headline5,
      ),
    );
  }
}
