import 'package:flutter/material.dart';

class SweetTransitionPage extends Page {
  const SweetTransitionPage({required this.child, LocalKey? key}) : super(key: key);
  final Widget child;

  @override
  Route createRoute(BuildContext context) {
    return PageRouteBuilder(
      transitionDuration: const Duration(milliseconds: 100),
      opaque: false,
      settings: this,
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
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
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

class NoTransitionPage extends Page {
  const NoTransitionPage({required this.child, LocalKey? key}) : super(key: key);
  final Widget child;

  @override
  Route createRoute(BuildContext context) {
    return PageRouteBuilder(
      transitionDuration: Duration.zero,
      opaque: false,
      settings: this,
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
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
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
