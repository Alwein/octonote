import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(const AuthState()) {
    on<_SignInStarted>(_onSignInStarted);
    on<_SignUpStarted>(_onSignUpStarted);
    on<_ResetPassword>(_onResetPassword);
    on<_RegisterWithEmailAndPassword>(_onRegisterWithEmailAndPassword);
    on<_LogInWithEmailAndPassword>(_onLogInWithEmailAndPassword);
    on<_LogInWithGoogle>(_onLogInWithGoogle);
    on<_LogInWithApple>(_onLogInWithApple);
  }

  FutureOr<void> _onSignInStarted(_SignInStarted event, Emitter<AuthState> emit) {
    if (state.authView is! SignIn) {
      emit(state.copyWith(authView: const AuthView.signIn()));
    }
  }

  FutureOr<void> _onSignUpStarted(_SignUpStarted event, Emitter<AuthState> emit) {
    if (state.authView is! SignUp) {
      emit(state.copyWith(authView: const AuthView.signUp()));
    }
  }

  FutureOr<void> _onResetPassword(_ResetPassword event, Emitter<AuthState> emit) {}

  FutureOr<void> _onRegisterWithEmailAndPassword(
    _RegisterWithEmailAndPassword event,
    Emitter<AuthState> emit,
  ) {}

  FutureOr<void> _onLogInWithEmailAndPassword(
    _LogInWithEmailAndPassword event,
    Emitter<AuthState> emit,
  ) {}

  FutureOr<void> _onLogInWithGoogle(_LogInWithGoogle event, Emitter<AuthState> emit) {}

  FutureOr<void> _onLogInWithApple(_LogInWithApple event, Emitter<AuthState> emit) {}
}

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.signInStarted() = _SignInStarted;
  const factory AuthEvent.signUpStarted() = _SignUpStarted;
  const factory AuthEvent.resetPassword({required String email}) = _ResetPassword;
  const factory AuthEvent.registerWithEmailAndPassword({
    required String email,
    required String password,
  }) = _RegisterWithEmailAndPassword;
  const factory AuthEvent.logInWithEmailAndPassword({
    required String email,
    required String password,
  }) = _LogInWithEmailAndPassword;
  const factory AuthEvent.logInWithGoogle() = _LogInWithGoogle;
  const factory AuthEvent.logInWithApple() = _LogInWithApple;
}

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    @Default(AuthView.signIn()) AuthView authView,
    @Default(AuthStatus.none()) AuthStatus authStatus,
  }) = _AuthState;
}

@freezed
class AuthStatus with _$AuthStatus {
  const factory AuthStatus.none() = _AuthNone;
  const factory AuthStatus.loadingInProgress() = _AuthLoadInProgress;
  const factory AuthStatus.success() = _AuthSuccess;
  const factory AuthStatus.error() = _AuthError;
}

@freezed
class AuthView with _$AuthView {
  const factory AuthView.signIn() = SignIn;
  const factory AuthView.signUp() = SignUp;
}
