import 'package:flutter/material.dart';
import 'package:octonote/application/constants/colors.dart';
import 'package:octonote/application/constants/layout_values.dart';
import 'package:octonote/presentation/widgets/menu_app_bar.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final backGroundColor = Theme.of(context).scaffoldBackgroundColor;
    return Scaffold(
      backgroundColor: backGroundColor,
      appBar: MenuAppBar(),
      body: Column(
        children: [
          const MenuDivider(),
          Expanded(
            //TODO: Implements with future repo
            child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: LayoutValues.HorizontalPadding, vertical: 5),
                      child: Text("Note $index", style: Theme.of(context).textTheme.headline6));
                }),
          ),
        ],
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
