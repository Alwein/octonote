import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:octonote/presentation/auth/bloc/auth_bloc.dart';
import 'package:octonote/presentation/auth/pages/sign_in/view/sign_in_view.dart';
import 'package:octonote/presentation/auth/pages/sign_up/view/sign_up_view.dart';
import 'package:octonote/presentation/widgets/loading.dart';

List<Page> onGenerateAuthViewPages(AuthState state) {
  final List<Page> pageStack = [
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

  if (state.authStatus.isLoading) {
    pageStack.add(
      SweetTransitionPage(
        child:
            Container(color: Colors.grey.withOpacity(0.2), child: const Center(child: Loading())),
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

class SweetTransitionPage extends Page {
  const SweetTransitionPage({required this.child, LocalKey? key}) : super(key: key);
  final Widget child;

  @override
  Route createRoute(BuildContext context) {
    return PageRouteBuilder(
      transitionDuration: const Duration(milliseconds: 100),
      opaque: false,
      settings: this,
      barrierColor: null,
      barrierLabel: null,
      pageBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
      ) {
        final Widget result = child;

        return Semantics(
          scopesRoute: true,
          explicitChildNodes: true,
          child: result,
        );
      },
      transitionsBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        Widget child,
      ) {
        const curve = Curves.ease;
        final curvedAnimation = CurvedAnimation(
          parent: animation,
          curve: curve,
        );

        return FadeTransition(
          opacity: curvedAnimation,
          child: child,
        );
      },
    );
  }
}
