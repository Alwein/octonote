import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:octonote/presentation/auth/bloc/auth_bloc.dart';
import 'package:octonote/presentation/auth/pages/sign_in/view/sign_in_view.dart';
import 'package:octonote/presentation/auth/pages/sign_up/view/sign_up_view.dart';

List<Page> onGenerateAuthViewPages(AuthState state) {
  final pageStack = [
    const MaterialPage(
      child: SignInView(),
      fullscreenDialog: true,
    )
  ];

  if (state.authView is SignUp) {
    pageStack.add(
      const MaterialPage(
        child: SignUpView(),
        fullscreenDialog: true,
      ),
    );
  }

  return pageStack;
}

class AuthRouterDelegate extends RouterDelegate
    with ChangeNotifier, PopNavigatorRouterDelegateMixin {
  AuthRouterDelegate() : navigatorKey = GlobalKey<NavigatorState>();

  @override
  final GlobalKey<NavigatorState> navigatorKey;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        return Navigator(
          key: navigatorKey,
          pages: onGenerateAuthViewPages(state),
          onPopPage: (route, result) {
            if (!route.didPop(result)) return false;
            state.authView.maybeMap(
              signUp: (_) => context.read<AuthBloc>().add(const AuthEvent.signInStarted()),
              orElse: () {},
            );
            return true;
          },
        );
      },
    );
  }

  @override
  Future<void> setNewRoutePath(dynamic configuration) async => {};
}
