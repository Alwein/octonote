import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:octonote/application/utils/generic_blocs/generic_registration_bloc/generic_registration_bloc.dart';
import 'package:octonote/locator.dart' as sl;
import 'package:octonote/presentation/auth/bloc/auth_bloc.dart';
import 'package:octonote/presentation/auth/pages/sign_up/bloc/sign_up_bloc.dart';
import 'package:octonote/presentation/auth/pages/sign_up/view/sign_up_view.dart';

import '../../../../../test_helpers/test_helpers.dart';

class MockAuthBloc extends MockBloc<AuthEvent, AuthState> implements AuthBloc {}

class MockSignUpBloc extends MockBloc<GenericRegistrationEvent, GenericRegistrationState>
    implements SignUpBloc {}

class FakeGenericRegistrationEvent extends Fake implements GenericRegistrationEvent {}

class FakeAuthEvent extends Fake implements AuthEvent {}

void main() {
  late AuthBloc authBloc;
  late SignUpBloc signUpBloc;

  setUpAll(() {
    registerFallbackValue(FakeGenericRegistrationEvent());
    registerFallbackValue(FakeAuthEvent());
  });

  setUp(() async {
    authBloc = MockAuthBloc();
    signUpBloc = MockSignUpBloc();

    await initServices();

    when(() => authBloc.state).thenReturn(const AuthState());
    when(() => signUpBloc.state).thenReturn(const GenericRegistrationState());

    sl.getIt.registerFactory<AuthBloc>(() => authBloc);
    sl.getIt.registerFactory<SignUpBloc>(() => signUpBloc);
  });

  Widget makeTestatableWidget() {
    return MyTestApp(
      page: BlocProvider(
        create: (context) => authBloc,
        child: const SignUpView(),
      ),
    );
  }

  group('SignUpView', () {
    testWidgets('should render a email and password input', (tester) async {
      await tester.runAsync(() async {
        await mountLocalizedPage(
          tester,
          makeTestatableWidget(),
        );
      });
      await tester.pump();

      expect(find.byType(SignUpEmailFormInput), findsOneWidget);
      expect(find.byType(SignUpPasswordFormInput), findsOneWidget);
      expect(find.byType(SignUpErrorMessage), findsOneWidget);
    });

    group('SignUpButton', () {
      testWidgets('should render a SignUpButton and add event on pressed', (tester) async {
        await tester.runAsync(() async {
          await mountLocalizedPage(
            tester,
            makeTestatableWidget(),
          );
        });
        await tester.pump();
        await tester.tap(find.byType(SignUpButton));

        verify(() => signUpBloc.add(any())).called(1);
        expect(find.byType(SignUpButton), findsOneWidget);
      });
    });
  });
}
