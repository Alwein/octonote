import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:octonote/application/models/auth_failure.dart';
import 'package:octonote/domain/usecases/authentication/auth_usecases.dart';

part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc({
    required this.logInWithEmailAndPassword,
    required this.registerWithEmailAndPassword,
    required this.sendVerificationEmail,
    required this.resetPassword,
    required this.signInWithGoogle,
    required this.signInWithApple,
  }) : super(const AuthState()) {
    on<_SignInStarted>(_onSignInStarted);
    on<_SignUpStarted>(_onSignUpStarted);
    on<_ResetPassword>(_onResetPassword);
    on<_RegisterWithEmailAndPassword>(_onRegisterWithEmailAndPassword);
    on<_LogInWithEmailAndPassword>(_onLogInWithEmailAndPassword);
    on<_LogInWithGoogle>(_onLogInWithGoogle);
    on<_LogInWithApple>(_onLogInWithApple);
  }

  final LogInWithEmailAndPassword logInWithEmailAndPassword;
  final RegisterWithEmailAndPassword registerWithEmailAndPassword;
  final SendVerificationEmail sendVerificationEmail;
  final ResetPassword resetPassword;
  final SignInWithGoogle signInWithGoogle;
  final SignInWithApple signInWithApple;

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

  FutureOr<void> _onResetPassword(_ResetPassword event, Emitter<AuthState> emit) async {
    if (state.authStatus is! _AuthLoadInProgress) {
      emit(state.copyWith(authStatus: const AuthStatus.loadingInProgress()));
      final result = await resetPassword(email: event.email);
      emitResult(result, emit);
    }
  }

  FutureOr<void> _onRegisterWithEmailAndPassword(
    _RegisterWithEmailAndPassword event,
    Emitter<AuthState> emit,
  ) async {
    if (state.authStatus is! _AuthLoadInProgress) {
      emit(state.copyWith(authStatus: const AuthStatus.loadingInProgress()));
      final result = await registerWithEmailAndPassword(
        email: event.email,
        password: event.password,
      );
      emitResult(
        result,
        emit,
        onSucces: () => sendVerificationEmail(),
      );
    }
  }

  FutureOr<void> _onLogInWithEmailAndPassword(
    _LogInWithEmailAndPassword event,
    Emitter<AuthState> emit,
  ) async {
    if (state.authStatus is! _AuthLoadInProgress) {
      emit(state.copyWith(authStatus: const AuthStatus.loadingInProgress()));
      final result = await logInWithEmailAndPassword(
        email: event.email,
        password: event.password,
      );
      emitResult(result, emit);
    }
  }

  FutureOr<void> _onLogInWithGoogle(_LogInWithGoogle event, Emitter<AuthState> emit) async {
    if (state.authStatus is! _AuthLoadInProgress) {
      emit(state.copyWith(authStatus: const AuthStatus.loadingInProgress()));
      final result = await signInWithGoogle();
      emitResult(result, emit);
    }
  }

  FutureOr<void> _onLogInWithApple(_LogInWithApple event, Emitter<AuthState> emit) async {
    if (state.authStatus is! _AuthLoadInProgress) {
      emit(state.copyWith(authStatus: const AuthStatus.loadingInProgress()));
      final result = await signInWithApple();
      emitResult(result, emit);
    }
  }

  void emitResult(
    Either<Unit, AuthFailure> result,
    Emitter<AuthState> emit, {
    void Function()? onSucces,
  }) {
    result.fold(
      (success) {
        emit(state.copyWith(authStatus: const AuthStatus.success()));
        onSucces?.call();
      },
      (failure) => emit(state.copyWith(authStatus: AuthStatus.error(authFailure: failure))),
    );
  }
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
  const factory AuthStatus.error({required AuthFailure authFailure}) = _AuthError;
}

extension AuthStatusEx on AuthStatus {
  bool get isError => this is _AuthError;
  bool get isLoading => this is _AuthLoadInProgress;
}

@freezed
class AuthView with _$AuthView {
  const factory AuthView.signIn() = SignIn;
  const factory AuthView.signUp() = SignUp;
}
