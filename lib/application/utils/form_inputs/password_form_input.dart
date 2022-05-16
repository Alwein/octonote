import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:octonote/application/utils/form_inputs/form_input.dart';

part 'password_form_input.freezed.dart';

@freezed
class PasswordInput with _$PasswordInput implements FormImput<String> {
  const PasswordInput._();
  const factory PasswordInput.pure({
    @Default("") String password,
  }) = _PasswordPure;
  const factory PasswordInput.dirty({
    required String password,
  }) = _PasswordDirty;
  const factory PasswordInput.invalid({
    required String password,
  }) = _PasswordInvalid;

  @override
  bool get validate {
    return password.length >= 6;
  }

  bool get isInvalid => this is _PasswordInvalid;

  @override
  String get output => password;
}
