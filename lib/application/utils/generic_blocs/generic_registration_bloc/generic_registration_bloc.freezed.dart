// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'generic_registration_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GenericRegistrationEventTearOff {
  const _$GenericRegistrationEventTearOff();

  _EmailChanged emailChanged(String value) {
    return _EmailChanged(
      value,
    );
  }

  _PasswordChanged passwordChanged(String value) {
    return _PasswordChanged(
      value,
    );
  }

  _Validate validate(
      {required void Function(String, String) onValidateSuccess,
      bool includePassword = true}) {
    return _Validate(
      onValidateSuccess: onValidateSuccess,
      includePassword: includePassword,
    );
  }
}

/// @nodoc
const $GenericRegistrationEvent = _$GenericRegistrationEventTearOff();

/// @nodoc
mixin _$GenericRegistrationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) emailChanged,
    required TResult Function(String value) passwordChanged,
    required TResult Function(void Function(String, String) onValidateSuccess,
            bool includePassword)
        validate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String value)? emailChanged,
    TResult Function(String value)? passwordChanged,
    TResult Function(void Function(String, String) onValidateSuccess,
            bool includePassword)?
        validate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? emailChanged,
    TResult Function(String value)? passwordChanged,
    TResult Function(void Function(String, String) onValidateSuccess,
            bool includePassword)?
        validate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_Validate value) validate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_Validate value)? validate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_Validate value)? validate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenericRegistrationEventCopyWith<$Res> {
  factory $GenericRegistrationEventCopyWith(GenericRegistrationEvent value,
          $Res Function(GenericRegistrationEvent) then) =
      _$GenericRegistrationEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$GenericRegistrationEventCopyWithImpl<$Res>
    implements $GenericRegistrationEventCopyWith<$Res> {
  _$GenericRegistrationEventCopyWithImpl(this._value, this._then);

  final GenericRegistrationEvent _value;
  // ignore: unused_field
  final $Res Function(GenericRegistrationEvent) _then;
}

/// @nodoc
abstract class _$EmailChangedCopyWith<$Res> {
  factory _$EmailChangedCopyWith(
          _EmailChanged value, $Res Function(_EmailChanged) then) =
      __$EmailChangedCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class __$EmailChangedCopyWithImpl<$Res>
    extends _$GenericRegistrationEventCopyWithImpl<$Res>
    implements _$EmailChangedCopyWith<$Res> {
  __$EmailChangedCopyWithImpl(
      _EmailChanged _value, $Res Function(_EmailChanged) _then)
      : super(_value, (v) => _then(v as _EmailChanged));

  @override
  _EmailChanged get _value => super._value as _EmailChanged;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_EmailChanged(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EmailChanged implements _EmailChanged {
  const _$_EmailChanged(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'GenericRegistrationEvent.emailChanged(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EmailChanged &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$EmailChangedCopyWith<_EmailChanged> get copyWith =>
      __$EmailChangedCopyWithImpl<_EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) emailChanged,
    required TResult Function(String value) passwordChanged,
    required TResult Function(void Function(String, String) onValidateSuccess,
            bool includePassword)
        validate,
  }) {
    return emailChanged(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String value)? emailChanged,
    TResult Function(String value)? passwordChanged,
    TResult Function(void Function(String, String) onValidateSuccess,
            bool includePassword)?
        validate,
  }) {
    return emailChanged?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? emailChanged,
    TResult Function(String value)? passwordChanged,
    TResult Function(void Function(String, String) onValidateSuccess,
            bool includePassword)?
        validate,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_Validate value) validate,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_Validate value)? validate,
  }) {
    return emailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_Validate value)? validate,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class _EmailChanged implements GenericRegistrationEvent {
  const factory _EmailChanged(String value) = _$_EmailChanged;

  String get value;
  @JsonKey(ignore: true)
  _$EmailChangedCopyWith<_EmailChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PasswordChangedCopyWith<$Res> {
  factory _$PasswordChangedCopyWith(
          _PasswordChanged value, $Res Function(_PasswordChanged) then) =
      __$PasswordChangedCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class __$PasswordChangedCopyWithImpl<$Res>
    extends _$GenericRegistrationEventCopyWithImpl<$Res>
    implements _$PasswordChangedCopyWith<$Res> {
  __$PasswordChangedCopyWithImpl(
      _PasswordChanged _value, $Res Function(_PasswordChanged) _then)
      : super(_value, (v) => _then(v as _PasswordChanged));

  @override
  _PasswordChanged get _value => super._value as _PasswordChanged;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_PasswordChanged(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PasswordChanged implements _PasswordChanged {
  const _$_PasswordChanged(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'GenericRegistrationEvent.passwordChanged(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PasswordChanged &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$PasswordChangedCopyWith<_PasswordChanged> get copyWith =>
      __$PasswordChangedCopyWithImpl<_PasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) emailChanged,
    required TResult Function(String value) passwordChanged,
    required TResult Function(void Function(String, String) onValidateSuccess,
            bool includePassword)
        validate,
  }) {
    return passwordChanged(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String value)? emailChanged,
    TResult Function(String value)? passwordChanged,
    TResult Function(void Function(String, String) onValidateSuccess,
            bool includePassword)?
        validate,
  }) {
    return passwordChanged?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? emailChanged,
    TResult Function(String value)? passwordChanged,
    TResult Function(void Function(String, String) onValidateSuccess,
            bool includePassword)?
        validate,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_Validate value) validate,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_Validate value)? validate,
  }) {
    return passwordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_Validate value)? validate,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class _PasswordChanged implements GenericRegistrationEvent {
  const factory _PasswordChanged(String value) = _$_PasswordChanged;

  String get value;
  @JsonKey(ignore: true)
  _$PasswordChangedCopyWith<_PasswordChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ValidateCopyWith<$Res> {
  factory _$ValidateCopyWith(_Validate value, $Res Function(_Validate) then) =
      __$ValidateCopyWithImpl<$Res>;
  $Res call(
      {void Function(String, String) onValidateSuccess, bool includePassword});
}

/// @nodoc
class __$ValidateCopyWithImpl<$Res>
    extends _$GenericRegistrationEventCopyWithImpl<$Res>
    implements _$ValidateCopyWith<$Res> {
  __$ValidateCopyWithImpl(_Validate _value, $Res Function(_Validate) _then)
      : super(_value, (v) => _then(v as _Validate));

  @override
  _Validate get _value => super._value as _Validate;

  @override
  $Res call({
    Object? onValidateSuccess = freezed,
    Object? includePassword = freezed,
  }) {
    return _then(_Validate(
      onValidateSuccess: onValidateSuccess == freezed
          ? _value.onValidateSuccess
          : onValidateSuccess // ignore: cast_nullable_to_non_nullable
              as void Function(String, String),
      includePassword: includePassword == freezed
          ? _value.includePassword
          : includePassword // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Validate implements _Validate {
  const _$_Validate(
      {required this.onValidateSuccess, this.includePassword = true});

  @override
  final void Function(String, String) onValidateSuccess;
  @JsonKey()
  @override
  final bool includePassword;

  @override
  String toString() {
    return 'GenericRegistrationEvent.validate(onValidateSuccess: $onValidateSuccess, includePassword: $includePassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Validate &&
            (identical(other.onValidateSuccess, onValidateSuccess) ||
                other.onValidateSuccess == onValidateSuccess) &&
            const DeepCollectionEquality()
                .equals(other.includePassword, includePassword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, onValidateSuccess,
      const DeepCollectionEquality().hash(includePassword));

  @JsonKey(ignore: true)
  @override
  _$ValidateCopyWith<_Validate> get copyWith =>
      __$ValidateCopyWithImpl<_Validate>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) emailChanged,
    required TResult Function(String value) passwordChanged,
    required TResult Function(void Function(String, String) onValidateSuccess,
            bool includePassword)
        validate,
  }) {
    return validate(onValidateSuccess, includePassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String value)? emailChanged,
    TResult Function(String value)? passwordChanged,
    TResult Function(void Function(String, String) onValidateSuccess,
            bool includePassword)?
        validate,
  }) {
    return validate?.call(onValidateSuccess, includePassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? emailChanged,
    TResult Function(String value)? passwordChanged,
    TResult Function(void Function(String, String) onValidateSuccess,
            bool includePassword)?
        validate,
    required TResult orElse(),
  }) {
    if (validate != null) {
      return validate(onValidateSuccess, includePassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_Validate value) validate,
  }) {
    return validate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_Validate value)? validate,
  }) {
    return validate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_Validate value)? validate,
    required TResult orElse(),
  }) {
    if (validate != null) {
      return validate(this);
    }
    return orElse();
  }
}

abstract class _Validate implements GenericRegistrationEvent {
  const factory _Validate(
      {required void Function(String, String) onValidateSuccess,
      bool includePassword}) = _$_Validate;

  void Function(String, String) get onValidateSuccess;
  bool get includePassword;
  @JsonKey(ignore: true)
  _$ValidateCopyWith<_Validate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$GenericRegistrationStateTearOff {
  const _$GenericRegistrationStateTearOff();

  _GenericRegistrationState call(
      {EmailInput email = const EmailInput.pure(),
      PasswordInput password = const PasswordInput.pure()}) {
    return _GenericRegistrationState(
      email: email,
      password: password,
    );
  }
}

/// @nodoc
const $GenericRegistrationState = _$GenericRegistrationStateTearOff();

/// @nodoc
mixin _$GenericRegistrationState {
  EmailInput get email => throw _privateConstructorUsedError;
  PasswordInput get password => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GenericRegistrationStateCopyWith<GenericRegistrationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenericRegistrationStateCopyWith<$Res> {
  factory $GenericRegistrationStateCopyWith(GenericRegistrationState value,
          $Res Function(GenericRegistrationState) then) =
      _$GenericRegistrationStateCopyWithImpl<$Res>;
  $Res call({EmailInput email, PasswordInput password});

  $EmailInputCopyWith<$Res> get email;
  $PasswordInputCopyWith<$Res> get password;
}

/// @nodoc
class _$GenericRegistrationStateCopyWithImpl<$Res>
    implements $GenericRegistrationStateCopyWith<$Res> {
  _$GenericRegistrationStateCopyWithImpl(this._value, this._then);

  final GenericRegistrationState _value;
  // ignore: unused_field
  final $Res Function(GenericRegistrationState) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailInput,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as PasswordInput,
    ));
  }

  @override
  $EmailInputCopyWith<$Res> get email {
    return $EmailInputCopyWith<$Res>(_value.email, (value) {
      return _then(_value.copyWith(email: value));
    });
  }

  @override
  $PasswordInputCopyWith<$Res> get password {
    return $PasswordInputCopyWith<$Res>(_value.password, (value) {
      return _then(_value.copyWith(password: value));
    });
  }
}

/// @nodoc
abstract class _$GenericRegistrationStateCopyWith<$Res>
    implements $GenericRegistrationStateCopyWith<$Res> {
  factory _$GenericRegistrationStateCopyWith(_GenericRegistrationState value,
          $Res Function(_GenericRegistrationState) then) =
      __$GenericRegistrationStateCopyWithImpl<$Res>;
  @override
  $Res call({EmailInput email, PasswordInput password});

  @override
  $EmailInputCopyWith<$Res> get email;
  @override
  $PasswordInputCopyWith<$Res> get password;
}

/// @nodoc
class __$GenericRegistrationStateCopyWithImpl<$Res>
    extends _$GenericRegistrationStateCopyWithImpl<$Res>
    implements _$GenericRegistrationStateCopyWith<$Res> {
  __$GenericRegistrationStateCopyWithImpl(_GenericRegistrationState _value,
      $Res Function(_GenericRegistrationState) _then)
      : super(_value, (v) => _then(v as _GenericRegistrationState));

  @override
  _GenericRegistrationState get _value =>
      super._value as _GenericRegistrationState;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_GenericRegistrationState(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailInput,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as PasswordInput,
    ));
  }
}

/// @nodoc

class _$_GenericRegistrationState implements _GenericRegistrationState {
  const _$_GenericRegistrationState(
      {this.email = const EmailInput.pure(),
      this.password = const PasswordInput.pure()});

  @JsonKey()
  @override
  final EmailInput email;
  @JsonKey()
  @override
  final PasswordInput password;

  @override
  String toString() {
    return 'GenericRegistrationState(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GenericRegistrationState &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$GenericRegistrationStateCopyWith<_GenericRegistrationState> get copyWith =>
      __$GenericRegistrationStateCopyWithImpl<_GenericRegistrationState>(
          this, _$identity);
}

abstract class _GenericRegistrationState implements GenericRegistrationState {
  const factory _GenericRegistrationState(
      {EmailInput email, PasswordInput password}) = _$_GenericRegistrationState;

  @override
  EmailInput get email;
  @override
  PasswordInput get password;
  @override
  @JsonKey(ignore: true)
  _$GenericRegistrationStateCopyWith<_GenericRegistrationState> get copyWith =>
      throw _privateConstructorUsedError;
}
