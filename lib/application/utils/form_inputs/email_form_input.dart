import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:octonote/application/utils/form_inputs/form_input.dart';

part 'email_form_input.freezed.dart';

@freezed
class EmailInput with _$EmailInput implements FormImput<String> {
  const EmailInput._();
  const factory EmailInput.pure({
    @Default("") String email,
  }) = _EmailPure;
  const factory EmailInput.dirty({
    required String email,
  }) = _EmailDirty;
  const factory EmailInput.invalid({
    required String email,
  }) = _EmailInvalid;

  @override
  bool get validate {
    return _emailRegExp.hasMatch(email);
  }

  bool get isInvalid => this is _EmailInvalid;

  @override
  String get output => email;

  static final RegExp _emailRegExp = RegExp(
    r'^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$',
  );
}
