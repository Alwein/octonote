import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_failure.freezed.dart';

@freezed
class AuthFailure with _$AuthFailure {
  const factory AuthFailure.cancelledByUser() = _CancelledByUser;
  const factory AuthFailure.serverError() = _ServerError;
  const factory AuthFailure.emailAlreadyInUse() = _EmailAlreadyInUse;
  const factory AuthFailure.invalidEmail() = _InvalidEmail;
  const factory AuthFailure.operationNotAllowed() = _OperationNotAllowed;
  const factory AuthFailure.userDisabled() = _UserDisabled;
  const factory AuthFailure.weakPassword() = _WeakPassword;
  const factory AuthFailure.wrongIosVersion() = _WrongIosVersion;
  const factory AuthFailure.logoutFailure() = _LogoutFailure;
  const factory AuthFailure.invalidPasswordAndEmailCombination() =
      _InvalidPasswordAndEmailCombination;
  const factory AuthFailure.userMismatch() = _UserMismatch;
  const factory AuthFailure.userNotFound() = _UserNotFound;
  const factory AuthFailure.invalidCredential() = _InvalidCredential;
  const factory AuthFailure.wrongPassword() = _WrongPassword;
  const factory AuthFailure.providerAlreadyLinked() = _ProviderAlreadyLinked;
  const factory AuthFailure.credentialAlreadyInUse() = _CredentialAlreadyInUse;
}
