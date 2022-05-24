import 'package:bloc_test/bloc_test.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:octonote/application/models/auth_failure.dart';
import 'package:octonote/application/utils/generic_blocs/generic_registration_bloc/generic_registration_bloc.dart';
import 'package:octonote/locator.dart' as sl;
import 'package:octonote/presentation/auth/bloc/auth_bloc.dart';
import 'package:octonote/presentation/auth/pages/sign_in/bloc/sign_in_bloc.dart';
import 'package:octonote/presentation/auth/view/auth_page_view.dart';

import '../../../test_helpers/test_helpers.dart';

class MockAuthBloc extends MockBloc<AuthEvent, AuthState> implements AuthBloc {}

class MockSignInBloc extends MockBloc<GenericRegistrationEvent, GenericRegistrationState>
    implements SignInBloc {}

void main() {
  late AuthBloc authBloc;
  late SignInBloc signInBloc;

  setUp(() async {
    authBloc = MockAuthBloc();
    signInBloc = MockSignInBloc();

    await initServices();

    when(() => authBloc.state).thenReturn(const AuthState());
    when(() => signInBloc.state).thenReturn(const GenericRegistrationState());
    sl.getIt.registerFactory<AuthBloc>(() => authBloc);
    sl.getIt.registerFactory<SignInBloc>(() => signInBloc);
  });

  Widget makeTestatableWidget() {
    return const MyTestApp(
      page: AuthPageView(),
    );
  }

  group('AuthPageView', () {
    testWidgets('should dispaly a AuthSnackbarManager', (tester) async {
      await tester.runAsync(() async {
        const screenWidth = 299.0;
        const screenHeight = 600.0;
        await tester.setScreenSize(width: screenWidth, height: screenHeight);
        await mountLocalizedPage(
          tester,
          makeTestatableWidget(),
        );
      });
      await tester.pump();

      expect(find.byType(AuthSnackbarManager), findsOneWidget);
    });

    testWidgets('should dispaly a MobileAuthView on mobile', (tester) async {
      await tester.runAsync(() async {
        const screenWidth = 299.0;
        const screenHeight = 600.0;
        await tester.setScreenSize(width: screenWidth, height: screenHeight);
        await mountLocalizedPage(
          tester,
          makeTestatableWidget(),
        );
      });
      await tester.pump();

      expect(find.byType(MobileAuthView), findsOneWidget);
    });

    testWidgets('should dispaly a DesktopAuthView on mobile', (tester) async {
      await tester.runAsync(() async {
        const screenWidth = 1920.0;
        const screenHeight = 1080.0;
        await tester.setScreenSize(width: screenWidth, height: screenHeight);
        await mountLocalizedPage(
          tester,
          makeTestatableWidget(),
        );
      });
      await tester.pump();

      expect(find.byType(DesktopAuthView), findsOneWidget);
    });

    testWidgets('should show a snackbar on error', (tester) async {
      whenListen(
        authBloc,
        Stream.fromIterable([
          const AuthState(
            authStatus: AuthStatus.error(authFailure: AuthFailure.invalidEmail()),
          )
        ]),
      );

      await tester.runAsync(() async {
        const screenWidth = 1920.0;
        const screenHeight = 1080.0;
        await tester.setScreenSize(width: screenWidth, height: screenHeight);
        await mountLocalizedPage(
          tester,
          makeTestatableWidget(),
        );
      });
      tester.binding.scheduleWarmUpFrame();

      await tester.pump();
      expect(find.text(tr('auth_error.invalidEmail')), findsWidgets);
    });
  });
}
