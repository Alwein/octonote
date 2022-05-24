import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:octonote/presentation/app/bloc/app_bloc.dart';
import 'package:octonote/presentation/auth/view/auth_page_view.dart';
import 'package:octonote/presentation/home_page/view/home_page_view.dart';

List<Page> onGenerateAppViewPages(AppState state) {
  return state.map(
    authenticated: (_) => [HomePage.page()],
    unauthenticated: (_) => [AuthPageView.page()],
  );
}

class AppRouterDelegate extends RouterDelegate
    with ChangeNotifier, PopNavigatorRouterDelegateMixin {
  AppRouterDelegate() : navigatorKey = GlobalKey<NavigatorState>();

  @override
  final GlobalKey<NavigatorState> navigatorKey;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppBloc, AppState>(
      builder: (context, state) {
        return Navigator(
          key: navigatorKey,
          pages: onGenerateAppViewPages(state),
          onPopPage: (route, result) {
            if (!route.didPop(result)) return false;
            return true;
          },
        );
      },
    );
  }

  @override
  Future<void> setNewRoutePath(dynamic configuration) async => {};
}
