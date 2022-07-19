import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:octonote/presentation/bootstrapping/bootstrapping.dart';
import 'package:octonote/presentation/home_page/view/home_page_view.dart';
import 'package:octonote/presentation/splash/splash_page.dart';
import 'package:octonote/presentation/widgets/custom_pages/custom_pages.dart';

void main() {
  group('onGenerateBootstrappingViewPages', () {
    test('returns [ErrorPage.page()] on error state', () {
      expect(
        onGenerateBootstrappingViewPages(
          const UserManagerState(status: UserManagerStatus.fetchError()),
        ),
        [isA<SweetTransitionPage>().having((p) => p.child, 'child', isA<BootstrappingErrorPage>())],
      );
    });

    test('returns [ErrorPage.page()] on error state', () {
      expect(
        onGenerateBootstrappingViewPages(
          const UserManagerState(status: UserManagerStatus.fetchError()),
        ),
        [isA<SweetTransitionPage>().having((p) => p.child, 'child', isA<BootstrappingErrorPage>())],
      );
    });

    test('returns [SplashPage.page()] on initial state', () {
      expect(
        onGenerateBootstrappingViewPages(
          const UserManagerState(status: UserManagerStatus.initial()),
        ),
        [isA<SweetTransitionPage>().having((p) => p.child, 'child', isA<SplashPage>())],
      );
    });

    test('returns [SplashPage.page()] on fetchInProgress state', () {
      expect(
        onGenerateBootstrappingViewPages(
          const UserManagerState(status: UserManagerStatus.fetchInProgress()),
        ),
        [isA<SweetTransitionPage>().having((p) => p.child, 'child', isA<SplashPage>())],
      );
    });

    test('returns [HomePage.page()] on fetched state', () {
      expect(
        onGenerateBootstrappingViewPages(
          const UserManagerState(status: UserManagerStatus.fechtSuccess()),
        ),
        [isA<MaterialPage>().having((p) => p.child, 'child', isA<HomePage>())],
      );
    });
  });
}
