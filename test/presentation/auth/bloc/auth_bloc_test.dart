import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:octonote/application/models/auth_failure.dart';
import 'package:octonote/domain/usecases/authentication/auth_usecases.dart';
import 'package:octonote/presentation/auth/bloc/auth_bloc.dart';

class MockLogInWithEmailAndPassword with Mock implements LogInWithEmailAndPassword {}

class MockRegisterWithEmailAndPassword with Mock implements RegisterWithEmailAndPassword {}

class MockSendVerificationEmail with Mock implements SendVerificationEmail {}

class MockResetPassword with Mock implements ResetPassword {}

class MockSignInWithGoogle with Mock implements SignInWithGoogle {}

class MockSignInWithApple with Mock implements SignInWithApple {}

void main() {
  late MockLogInWithEmailAndPassword logInWithEmailAndPassword;
  late MockRegisterWithEmailAndPassword registerWithEmailAndPassword;
  late MockSendVerificationEmail sendVerificationEmail;
  late MockResetPassword resetPassword;
  late MockSignInWithGoogle signInWithGoogle;
  late MockSignInWithApple signInWithApple;

  setUp(() {
    logInWithEmailAndPassword = MockLogInWithEmailAndPassword();
    registerWithEmailAndPassword = MockRegisterWithEmailAndPassword();
    sendVerificationEmail = MockSendVerificationEmail();
    resetPassword = MockResetPassword();
    signInWithGoogle = MockSignInWithGoogle();
    signInWithApple = MockSignInWithApple();
  });

  AuthBloc _buildBloc() {
    return AuthBloc(
      logInWithEmailAndPassword: logInWithEmailAndPassword,
      registerWithEmailAndPassword: registerWithEmailAndPassword,
      sendVerificationEmail: sendVerificationEmail,
      resetPassword: resetPassword,
      signInWithGoogle: signInWithGoogle,
      signInWithApple: signInWithApple,
    );
  }

  group('AuthBloc', () {
    group('onSignInStarted', () {
      blocTest<AuthBloc, AuthState>(
        'should emit same state with AuthView to signIn',
        seed: () => const AuthState(authView: AuthView.signUp()),
        build: () => _buildBloc(),
        act: (bloc) => bloc.add(const AuthEvent.signInStarted()),
        expect: () => const [AuthState()],
      );
    });
    group('onSignUpStarted', () {
      blocTest<AuthBloc, AuthState>(
        'should emit same state with AuthView to signUp',
        seed: () => const AuthState(),
        build: () => _buildBloc(),
        act: (bloc) => bloc.add(const AuthEvent.signUpStarted()),
        expect: () => const [AuthState(authView: AuthView.signUp())],
      );
    });
    group('onResetPassword', () {
      blocTest<AuthBloc, AuthState>(
        'should emit success on success',
        setUp: () {
          when(() => resetPassword(email: any(named: "email"))).thenAnswer((_) async => const Left(unit));
        },
        build: () => _buildBloc(),
        act: (bloc) => bloc.add(const AuthEvent.resetPassword(email: "any")),
        expect: () => const [
          AuthState(authStatus: AuthStatus.loadingInProgress()),
          AuthState(authStatus: AuthStatus.success()),
        ],
      );

      blocTest<AuthBloc, AuthState>(
        'should emit error on auth failure',
        setUp: () {
          when(() => resetPassword(email: any(named: "email")))
              .thenAnswer((_) async => const Right(AuthFailure.invalidEmail()));
        },
        build: () => _buildBloc(),
        act: (bloc) => bloc.add(const AuthEvent.resetPassword(email: "any")),
        expect: () => const [
          AuthState(authStatus: AuthStatus.loadingInProgress()),
          AuthState(authStatus: AuthStatus.error(authFailure: AuthFailure.invalidEmail())),
        ],
      );
    });
    group('onRegisterWithEmailAndPassword', () {
      blocTest<AuthBloc, AuthState>(
        'should emit success on success',
        setUp: () {
          when(
            () => registerWithEmailAndPassword(
              email: any(named: "email"),
              password: any(named: "password"),
            ),
          ).thenAnswer((_) async => const Left(unit));
          when(
            () => sendVerificationEmail(),
          ).thenAnswer((_) async => const Left(unit));
        },
        build: () => _buildBloc(),
        act: (bloc) => bloc.add(
          const AuthEvent.registerWithEmailAndPassword(
            email: "any",
            password: "any",
          ),
        ),
        expect: () => const [
          AuthState(authStatus: AuthStatus.loadingInProgress()),
          AuthState(authStatus: AuthStatus.success()),
        ],
        verify: (_) {
          verify(() => sendVerificationEmail()).called(1);
        },
      );

      blocTest<AuthBloc, AuthState>(
        'should emit failure on auth failure',
        setUp: () {
          when(
            () => registerWithEmailAndPassword(
              email: any(named: "email"),
              password: any(named: "password"),
            ),
          ).thenAnswer((_) async => const Right(AuthFailure.invalidEmail()));
        },
        build: () => _buildBloc(),
        act: (bloc) => bloc.add(
          const AuthEvent.registerWithEmailAndPassword(
            email: "any",
            password: "any",
          ),
        ),
        expect: () => const [
          AuthState(authStatus: AuthStatus.loadingInProgress()),
          AuthState(authStatus: AuthStatus.error(authFailure: AuthFailure.invalidEmail())),
        ],
        verify: (_) {
          verifyNever(() => sendVerificationEmail());
        },
      );
    });
    group('onLogInWithEmailAndPassword', () {
      blocTest<AuthBloc, AuthState>(
        'should emit success on success',
        setUp: () {
          when(
            () => logInWithEmailAndPassword(
              email: any(named: "email"),
              password: any(named: "password"),
            ),
          ).thenAnswer((_) async => const Left(unit));
        },
        build: () => _buildBloc(),
        act: (bloc) => bloc.add(
          const AuthEvent.logInWithEmailAndPassword(
            email: "any",
            password: "any",
          ),
        ),
        expect: () => const [
          AuthState(authStatus: AuthStatus.loadingInProgress()),
          AuthState(authStatus: AuthStatus.success()),
        ],
      );

      blocTest<AuthBloc, AuthState>(
        'should emit error on auth failure',
        setUp: () {
          when(
            () => logInWithEmailAndPassword(
              email: any(named: "email"),
              password: any(named: "password"),
            ),
          ).thenAnswer((_) async => const Right(AuthFailure.invalidEmail()));
        },
        build: () => _buildBloc(),
        act: (bloc) => bloc.add(
          const AuthEvent.logInWithEmailAndPassword(
            email: "any",
            password: "any",
          ),
        ),
        expect: () => const [
          AuthState(authStatus: AuthStatus.loadingInProgress()),
          AuthState(authStatus: AuthStatus.error(authFailure: AuthFailure.invalidEmail())),
        ],
      );
    });
    group('onLogInWithGoogle', () {
      blocTest<AuthBloc, AuthState>(
        'should emit success on success',
        setUp: () {
          when(
            () => signInWithGoogle(),
          ).thenAnswer((_) async => const Left(unit));
        },
        build: () => _buildBloc(),
        act: (bloc) => bloc.add(
          const AuthEvent.logInWithGoogle(),
        ),
        expect: () => const [
          AuthState(authStatus: AuthStatus.loadingInProgress()),
          AuthState(authStatus: AuthStatus.success()),
        ],
      );

      blocTest<AuthBloc, AuthState>(
        'should emit error on auth failure',
        setUp: () {
          when(
            () => signInWithGoogle(),
          ).thenAnswer((_) async => const Right(AuthFailure.invalidEmail()));
        },
        build: () => _buildBloc(),
        act: (bloc) => bloc.add(
          const AuthEvent.logInWithGoogle(),
        ),
        expect: () => const [
          AuthState(authStatus: AuthStatus.loadingInProgress()),
          AuthState(authStatus: AuthStatus.error(authFailure: AuthFailure.invalidEmail())),
        ],
      );
    });
    group('onLogInWithApple', () {
      blocTest<AuthBloc, AuthState>(
        'should emit success on success',
        setUp: () {
          when(
            () => signInWithApple(),
          ).thenAnswer((_) async => const Left(unit));
        },
        build: () => _buildBloc(),
        act: (bloc) => bloc.add(
          const AuthEvent.logInWithApple(),
        ),
        expect: () => const [
          AuthState(authStatus: AuthStatus.loadingInProgress()),
          AuthState(authStatus: AuthStatus.success()),
        ],
      );

      blocTest<AuthBloc, AuthState>(
        'should emit error on auth failure',
        setUp: () {
          when(
            () => signInWithApple(),
          ).thenAnswer((_) async => const Right(AuthFailure.invalidEmail()));
        },
        build: () => _buildBloc(),
        act: (bloc) => bloc.add(
          const AuthEvent.logInWithApple(),
        ),
        expect: () => const [
          AuthState(authStatus: AuthStatus.loadingInProgress()),
          AuthState(authStatus: AuthStatus.error(authFailure: AuthFailure.invalidEmail())),
        ],
      );
    });
  });
}
