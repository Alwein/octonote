import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:octonote/application/utils/breakpoints.dart';
import 'package:octonote/locator.dart' as sl;
import 'package:octonote/presentation/menu/bloc/menu_bloc.dart';
import 'package:octonote/presentation/menu/view/menu_view.dart';
import 'package:octonote/presentation/notepad/bloc/notepad_bloc.dart';
import 'package:octonote/presentation/notepad/view/notepad_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static Page page() => const MaterialPage<void>(child: HomePage());

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => sl.getIt<MenuBloc>()..add(const MenuEvent.fetchStarted()),
        ),
        BlocProvider(
          create: (context) => sl.getIt<NotePadBloc>(param1: context.read<MenuBloc>(), param2: sl.NoParams()),
        ),
      ],
      child: BlocListener<MenuBloc, MenuState>(
        listenWhen: (previous, current) => previous.notePageSelected != current.notePageSelected,
        listener: (context, state) {
          context.read<NotePadBloc>().add(NotePadEvent.fetchStarted(notePage: state.notePageSelected));
        },
        child: getSize(context).isGreatherThanMobile ? const DesktopView() : const MobileView(),
      ),
    );
  }
}

class DesktopView extends StatelessWidget {
  const DesktopView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Row(
        children: [
          SizedBox(
            width: 220,
            child: Menu(),
          ),
          Expanded(
            child: Notepad(),
          )
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
