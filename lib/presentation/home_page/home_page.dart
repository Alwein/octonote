import 'package:flutter/material.dart';
import 'package:octonote/application/utils/breakpoints.dart';
import 'package:octonote/presentation/menu/menu.dart';
import 'package:octonote/presentation/notepad/notepad.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return getSize(context).isGreatherThanMobile ? const DesktopView() : const MobileView();
  }
}

class DesktopView extends StatelessWidget {
  const DesktopView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: const [
          SizedBox(
            width: 250,
            child: Menu(),
          ),
          Expanded(child: Notepad())
        ],
      ),
    );
  }
}

class MobileView extends StatelessWidget {
  const MobileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Notepad(
        drawer: Drawer(
          child: Menu(),
        ),
      ),
    );
  }
}
