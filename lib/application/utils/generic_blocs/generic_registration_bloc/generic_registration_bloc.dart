import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:octonote/application/utils/form_inputs/email_form_input.dart';
import 'package:octonote/application/utils/form_inputs/password_form_input.dart';

part 'generic_registration_bloc.freezed.dart';

abstract class GenericRegistrationBloc
    extends Bloc<GenericRegistrationEvent, GenericRegistrationState> {
  GenericRegistrationBloc() : super(const GenericRegistrationState()) {
    on<_EmailChanged>(_onEmailChanged);
    on<_PasswordChanged>(_onPasswordChanged);
    on<_Validate>(_onValidate);
  }

  FutureOr<void> _onEmailChanged(_EmailChanged event, Emitter<GenericRegistrationState> emit) {
    emit(state.copyWith(email: EmailInput.dirty(email: event.value)));
  }

  FutureOr<void> _onPasswordChanged(
      _PasswordChanged event, Emitter<GenericRegistrationState> emit) {
    emit(state.copyWith(password: PasswordInput.dirty(password: event.value)));
  }

  FutureOr<void> _onValidate(_Validate event, Emitter<GenericRegistrationState> emit) {
    if (event.includePassword) {
      if (state.email.validate && state.password.validate) {
        event.onValidateSuccess.call(state.email.output, state.password.output);
      } else {
        emit(
          state.copyWith(
            email:
                state.email.validate ? state.email : EmailInput.invalid(email: state.email.output),
            password: state.password.validate
                ? state.password
                : PasswordInput.invalid(password: state.password.output),
          ),
        );
      }
    } else {
      if (state.email.validate) {
        event.onValidateSuccess.call(state.email.output, state.password.output);
      } else {
        emit(
          state.copyWith(
            email: EmailInput.invalid(email: state.email.output),
          ),
        );
      }
    }
  }
}

@freezed
class GenericRegistrationEvent with _$GenericRegistrationEvent {
  const factory GenericRegistrationEvent.emailChanged(String value) = _EmailChanged;
  const factory GenericRegistrationEvent.passwordChanged(String value) = _PasswordChanged;
  const factory GenericRegistrationEvent.validate({
    required void Function(String email, String password) onValidateSuccess,
    @Default(true) bool includePassword,
  }) = _Validate;
}

@freezed
class GenericRegistrationState with _$GenericRegistrationState {
  const factory GenericRegistrationState({
    @Default(EmailInput.pure()) EmailInput email,
    @Default(PasswordInput.pure()) PasswordInput password,
  }) = _GenericRegistrationState;
}
