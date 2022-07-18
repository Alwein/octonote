import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:octonote/presentation/bootstrapping/bootstrapping.dart';
import 'package:octonote/presentation/home_page/view/home_page_view.dart';
import 'package:octonote/presentation/splash/splash_page.dart';

List<Page> onGenerateBootstrappingViewPages(UserManagerState state) {
  return state.status.maybeMap(
    fetchError: (_) => [BootstrappingErrorPage.noTransitionPage()],
    fechtSuccess: (_) => [HomePage.page()],
    orElse: () => [SplashPage.noTransitionPage()],
  );
}

class BootstrappingRouterDelegate extends RouterDelegate
    with ChangeNotifier, PopNavigatorRouterDelegateMixin {
  BootstrappingRouterDelegate() : navigatorKey = GlobalKey<NavigatorState>();

  @override
  final GlobalKey<NavigatorState> navigatorKey;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserManagerBloc, UserManagerState>(
      builder: (context, state) {
        return Navigator(
          key: navigatorKey,
          pages: onGenerateBootstrappingViewPages(state),
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
