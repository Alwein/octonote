import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:octonote/application/utils/breakpoints.dart';
import 'package:octonote/locator.dart' as sl;
import 'package:octonote/presentation/auth/bloc/auth_bloc.dart';
import 'package:octonote/presentation/auth/pages/welcome/welcome_view.dart';
import 'package:octonote/presentation/auth/router/auth_router.dart';

class AuthView extends StatelessWidget {
  const AuthView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl.getIt<AuthBloc>(),
      child: Scaffold(
        body: getSize(context).isGreatherThanMobile
            ? const DesktopAuthView()
            : const MobileAuthView(),
      ),
    );
  }
}

class MobileAuthView extends StatelessWidget {
  const MobileAuthView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Router(
      routerDelegate: AuthRouterDelegate(),
    );
  }
}

class DesktopAuthView extends StatelessWidget {
  const DesktopAuthView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Flexible(
          flex: 16,
          child: WelcomeView(),
        ),
        VerticalDivider(
          width: 1,
        ),
        Flexible(
          flex: 10,
          child: MobileAuthView(),
        ),
      ],
    );
  }
}
