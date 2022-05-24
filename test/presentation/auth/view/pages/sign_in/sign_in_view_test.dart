import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:octonote/application/utils/generic_blocs/generic_registration_bloc/generic_registration_bloc.dart';
import 'package:octonote/locator.dart' as sl;
import 'package:octonote/presentation/auth/bloc/auth_bloc.dart';
import 'package:octonote/presentation/auth/pages/sign_in/bloc/sign_in_bloc.dart';
import 'package:octonote/presentation/auth/pages/sign_in/view/sign_in_view.dart';

import '../../../../../test_helpers/test_helpers.dart';

class MockAuthBloc extends MockBloc<AuthEvent, AuthState> implements AuthBloc {}

class MockSignInBloc extends MockBloc<GenericRegistrationEvent, GenericRegistrationState>
    implements SignInBloc {}

class FakeGenericRegistrationEvent extends Fake implements GenericRegistrationEvent {}

void main() {
  late AuthBloc authBloc;
  late SignInBloc signInBloc;

  setUpAll(() {
    registerFallbackValue(FakeGenericRegistrationEvent());
  });

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
    return MyTestApp(
      page: BlocProvider(
        create: (context) => authBloc,
        child: const SignInView(),
      ),
    );
  }

  group('SignInView', () {
    testWidgets('should render a email and password input', (tester) async {
      await tester.runAsync(() async {
        await mountLocalizedPage(
          tester,
          makeTestatableWidget(),
        );
      });
      await tester.pump();

      expect(find.byType(SignInEmailFormInput), findsOneWidget);
      expect(find.byType(SignInPasswordFormInput), findsOneWidget);
      expect(find.byType(SignInErrorMessage), findsOneWidget);
    });

    group('GoToSignUpButton', () {
      testWidgets('should render a GoToSignUpButton and add event on pressed', (tester) async {
        await tester.runAsync(() async {
          await mountLocalizedPage(
            tester,
            makeTestatableWidget(),
          );
        });
        await tester.pump();
        await tester.tap(find.byType(GoToSignUpButton));

        verify(() => authBloc.add(const AuthEvent.signUpStarted())).called(1);
        expect(find.byType(GoToSignUpButton), findsOneWidget);
      });
    });

    group('GoogleSignInButton', () {
      testWidgets('should render a GoogleSignInButton and add event on pressed', (tester) async {
        await tester.runAsync(() async {
          await mountLocalizedPage(
            tester,
            makeTestatableWidget(),
          );
        });
        await tester.pump();
        await tester.tap(find.byType(GoogleSignInButton));

        verify(() => authBloc.add(const AuthEvent.logInWithGoogle())).called(1);
        expect(find.byType(GoogleSignInButton), findsOneWidget);
      });
    });

    group('AppleSignInButton', () {
      testWidgets('should render a AppleSignInButton and add event on pressed', (tester) async {
        await tester.runAsync(() async {
          await mountLocalizedPage(
            tester,
            makeTestatableWidget(),
          );
        });
        await tester.pump();
        await tester.tap(find.byType(AppleSignInButton));

        verify(() => authBloc.add(const AuthEvent.logInWithApple())).called(1);
        expect(find.byType(AppleSignInButton), findsOneWidget);
      });
    });

    group('ForgotPasswordButton', () {
      testWidgets('should render a ForgotPasswordButton and add event on pressed', (tester) async {
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
        await tester.tap(find.byType(ForgotPasswordButton));

        verify(
          () => signInBloc.add(any()),
        ).called(1);
        expect(find.byType(ForgotPasswordButton), findsOneWidget);
      });
    });
  });
}
