// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthEventTearOff {
  const _$AuthEventTearOff();

  _SignInStarted signInStarted() {
    return const _SignInStarted();
  }

  _SignUpStarted signUpStarted() {
    return const _SignUpStarted();
  }

  _ResetPassword resetPassword({required String email}) {
    return _ResetPassword(
      email: email,
    );
  }

  _RegisterWithEmailAndPassword registerWithEmailAndPassword(
      {required String email, required String password}) {
    return _RegisterWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  _LogInWithEmailAndPassword logInWithEmailAndPassword(
      {required String email, required String password}) {
    return _LogInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  _LogInWithGoogle logInWithGoogle() {
    return const _LogInWithGoogle();
  }

  _LogInWithApple logInWithApple() {
    return const _LogInWithApple();
  }
}

/// @nodoc
const $AuthEvent = _$AuthEventTearOff();

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signInStarted,
    required TResult Function() signUpStarted,
    required TResult Function(String email) resetPassword,
    required TResult Function(String email, String password)
        registerWithEmailAndPassword,
    required TResult Function(String email, String password)
        logInWithEmailAndPassword,
    required TResult Function() logInWithGoogle,
    required TResult Function() logInWithApple,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? signInStarted,
    TResult Function()? signUpStarted,
    TResult Function(String email)? resetPassword,
    TResult Function(String email, String password)?
        registerWithEmailAndPassword,
    TResult Function(String email, String password)? logInWithEmailAndPassword,
    TResult Function()? logInWithGoogle,
    TResult Function()? logInWithApple,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signInStarted,
    TResult Function()? signUpStarted,
    TResult Function(String email)? resetPassword,
    TResult Function(String email, String password)?
        registerWithEmailAndPassword,
    TResult Function(String email, String password)? logInWithEmailAndPassword,
    TResult Function()? logInWithGoogle,
    TResult Function()? logInWithApple,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignInStarted value) signInStarted,
    required TResult Function(_SignUpStarted value) signUpStarted,
    required TResult Function(_ResetPassword value) resetPassword,
    required TResult Function(_RegisterWithEmailAndPassword value)
        registerWithEmailAndPassword,
    required TResult Function(_LogInWithEmailAndPassword value)
        logInWithEmailAndPassword,
    required TResult Function(_LogInWithGoogle value) logInWithGoogle,
    required TResult Function(_LogInWithApple value) logInWithApple,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SignInStarted value)? signInStarted,
    TResult Function(_SignUpStarted value)? signUpStarted,
    TResult Function(_ResetPassword value)? resetPassword,
    TResult Function(_RegisterWithEmailAndPassword value)?
        registerWithEmailAndPassword,
    TResult Function(_LogInWithEmailAndPassword value)?
        logInWithEmailAndPassword,
    TResult Function(_LogInWithGoogle value)? logInWithGoogle,
    TResult Function(_LogInWithApple value)? logInWithApple,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignInStarted value)? signInStarted,
    TResult Function(_SignUpStarted value)? signUpStarted,
    TResult Function(_ResetPassword value)? resetPassword,
    TResult Function(_RegisterWithEmailAndPassword value)?
        registerWithEmailAndPassword,
    TResult Function(_LogInWithEmailAndPassword value)?
        logInWithEmailAndPassword,
    TResult Function(_LogInWithGoogle value)? logInWithGoogle,
    TResult Function(_LogInWithApple value)? logInWithApple,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res> implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  final AuthEvent _value;
  // ignore: unused_field
  final $Res Function(AuthEvent) _then;
}

/// @nodoc
abstract class _$SignInStartedCopyWith<$Res> {
  factory _$SignInStartedCopyWith(
          _SignInStarted value, $Res Function(_SignInStarted) then) =
      __$SignInStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SignInStartedCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements _$SignInStartedCopyWith<$Res> {
  __$SignInStartedCopyWithImpl(
      _SignInStarted _value, $Res Function(_SignInStarted) _then)
      : super(_value, (v) => _then(v as _SignInStarted));

  @override
  _SignInStarted get _value => super._value as _SignInStarted;
}

/// @nodoc

class _$_SignInStarted implements _SignInStarted {
  const _$_SignInStarted();

  @override
  String toString() {
    return 'AuthEvent.signInStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _SignInStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signInStarted,
    required TResult Function() signUpStarted,
    required TResult Function(String email) resetPassword,
    required TResult Function(String email, String password)
        registerWithEmailAndPassword,
    required TResult Function(String email, String password)
        logInWithEmailAndPassword,
    required TResult Function() logInWithGoogle,
    required TResult Function() logInWithApple,
  }) {
    return signInStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? signInStarted,
    TResult Function()? signUpStarted,
    TResult Function(String email)? resetPassword,
    TResult Function(String email, String password)?
        registerWithEmailAndPassword,
    TResult Function(String email, String password)? logInWithEmailAndPassword,
    TResult Function()? logInWithGoogle,
    TResult Function()? logInWithApple,
  }) {
    return signInStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signInStarted,
    TResult Function()? signUpStarted,
    TResult Function(String email)? resetPassword,
    TResult Function(String email, String password)?
        registerWithEmailAndPassword,
    TResult Function(String email, String password)? logInWithEmailAndPassword,
    TResult Function()? logInWithGoogle,
    TResult Function()? logInWithApple,
    required TResult orElse(),
  }) {
    if (signInStarted != null) {
      return signInStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignInStarted value) signInStarted,
    required TResult Function(_SignUpStarted value) signUpStarted,
    required TResult Function(_ResetPassword value) resetPassword,
    required TResult Function(_RegisterWithEmailAndPassword value)
        registerWithEmailAndPassword,
    required TResult Function(_LogInWithEmailAndPassword value)
        logInWithEmailAndPassword,
    required TResult Function(_LogInWithGoogle value) logInWithGoogle,
    required TResult Function(_LogInWithApple value) logInWithApple,
  }) {
    return signInStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SignInStarted value)? signInStarted,
    TResult Function(_SignUpStarted value)? signUpStarted,
    TResult Function(_ResetPassword value)? resetPassword,
    TResult Function(_RegisterWithEmailAndPassword value)?
        registerWithEmailAndPassword,
    TResult Function(_LogInWithEmailAndPassword value)?
        logInWithEmailAndPassword,
    TResult Function(_LogInWithGoogle value)? logInWithGoogle,
    TResult Function(_LogInWithApple value)? logInWithApple,
  }) {
    return signInStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignInStarted value)? signInStarted,
    TResult Function(_SignUpStarted value)? signUpStarted,
    TResult Function(_ResetPassword value)? resetPassword,
    TResult Function(_RegisterWithEmailAndPassword value)?
        registerWithEmailAndPassword,
    TResult Function(_LogInWithEmailAndPassword value)?
        logInWithEmailAndPassword,
    TResult Function(_LogInWithGoogle value)? logInWithGoogle,
    TResult Function(_LogInWithApple value)? logInWithApple,
    required TResult orElse(),
  }) {
    if (signInStarted != null) {
      return signInStarted(this);
    }
    return orElse();
  }
}

abstract class _SignInStarted implements AuthEvent {
  const factory _SignInStarted() = _$_SignInStarted;
}

/// @nodoc
abstract class _$SignUpStartedCopyWith<$Res> {
  factory _$SignUpStartedCopyWith(
          _SignUpStarted value, $Res Function(_SignUpStarted) then) =
      __$SignUpStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SignUpStartedCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements _$SignUpStartedCopyWith<$Res> {
  __$SignUpStartedCopyWithImpl(
      _SignUpStarted _value, $Res Function(_SignUpStarted) _then)
      : super(_value, (v) => _then(v as _SignUpStarted));

  @override
  _SignUpStarted get _value => super._value as _SignUpStarted;
}

/// @nodoc

class _$_SignUpStarted implements _SignUpStarted {
  const _$_SignUpStarted();

  @override
  String toString() {
    return 'AuthEvent.signUpStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _SignUpStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signInStarted,
    required TResult Function() signUpStarted,
    required TResult Function(String email) resetPassword,
    required TResult Function(String email, String password)
        registerWithEmailAndPassword,
    required TResult Function(String email, String password)
        logInWithEmailAndPassword,
    required TResult Function() logInWithGoogle,
    required TResult Function() logInWithApple,
  }) {
    return signUpStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? signInStarted,
    TResult Function()? signUpStarted,
    TResult Function(String email)? resetPassword,
    TResult Function(String email, String password)?
        registerWithEmailAndPassword,
    TResult Function(String email, String password)? logInWithEmailAndPassword,
    TResult Function()? logInWithGoogle,
    TResult Function()? logInWithApple,
  }) {
    return signUpStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signInStarted,
    TResult Function()? signUpStarted,
    TResult Function(String email)? resetPassword,
    TResult Function(String email, String password)?
        registerWithEmailAndPassword,
    TResult Function(String email, String password)? logInWithEmailAndPassword,
    TResult Function()? logInWithGoogle,
    TResult Function()? logInWithApple,
    required TResult orElse(),
  }) {
    if (signUpStarted != null) {
      return signUpStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignInStarted value) signInStarted,
    required TResult Function(_SignUpStarted value) signUpStarted,
    required TResult Function(_ResetPassword value) resetPassword,
    required TResult Function(_RegisterWithEmailAndPassword value)
        registerWithEmailAndPassword,
    required TResult Function(_LogInWithEmailAndPassword value)
        logInWithEmailAndPassword,
    required TResult Function(_LogInWithGoogle value) logInWithGoogle,
    required TResult Function(_LogInWithApple value) logInWithApple,
  }) {
    return signUpStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SignInStarted value)? signInStarted,
    TResult Function(_SignUpStarted value)? signUpStarted,
    TResult Function(_ResetPassword value)? resetPassword,
    TResult Function(_RegisterWithEmailAndPassword value)?
        registerWithEmailAndPassword,
    TResult Function(_LogInWithEmailAndPassword value)?
        logInWithEmailAndPassword,
    TResult Function(_LogInWithGoogle value)? logInWithGoogle,
    TResult Function(_LogInWithApple value)? logInWithApple,
  }) {
    return signUpStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignInStarted value)? signInStarted,
    TResult Function(_SignUpStarted value)? signUpStarted,
    TResult Function(_ResetPassword value)? resetPassword,
    TResult Function(_RegisterWithEmailAndPassword value)?
        registerWithEmailAndPassword,
    TResult Function(_LogInWithEmailAndPassword value)?
        logInWithEmailAndPassword,
    TResult Function(_LogInWithGoogle value)? logInWithGoogle,
    TResult Function(_LogInWithApple value)? logInWithApple,
    required TResult orElse(),
  }) {
    if (signUpStarted != null) {
      return signUpStarted(this);
    }
    return orElse();
  }
}

abstract class _SignUpStarted implements AuthEvent {
  const factory _SignUpStarted() = _$_SignUpStarted;
}

/// @nodoc
abstract class _$ResetPasswordCopyWith<$Res> {
  factory _$ResetPasswordCopyWith(
          _ResetPassword value, $Res Function(_ResetPassword) then) =
      __$ResetPasswordCopyWithImpl<$Res>;
  $Res call({String email});
}

/// @nodoc
class __$ResetPasswordCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements _$ResetPasswordCopyWith<$Res> {
  __$ResetPasswordCopyWithImpl(
      _ResetPassword _value, $Res Function(_ResetPassword) _then)
      : super(_value, (v) => _then(v as _ResetPassword));

  @override
  _ResetPassword get _value => super._value as _ResetPassword;

  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(_ResetPassword(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ResetPassword implements _ResetPassword {
  const _$_ResetPassword({required this.email});

  @override
  final String email;

  @override
  String toString() {
    return 'AuthEvent.resetPassword(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ResetPassword &&
            const DeepCollectionEquality().equals(other.email, email));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(email));

  @JsonKey(ignore: true)
  @override
  _$ResetPasswordCopyWith<_ResetPassword> get copyWith =>
      __$ResetPasswordCopyWithImpl<_ResetPassword>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signInStarted,
    required TResult Function() signUpStarted,
    required TResult Function(String email) resetPassword,
    required TResult Function(String email, String password)
        registerWithEmailAndPassword,
    required TResult Function(String email, String password)
        logInWithEmailAndPassword,
    required TResult Function() logInWithGoogle,
    required TResult Function() logInWithApple,
  }) {
    return resetPassword(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? signInStarted,
    TResult Function()? signUpStarted,
    TResult Function(String email)? resetPassword,
    TResult Function(String email, String password)?
        registerWithEmailAndPassword,
    TResult Function(String email, String password)? logInWithEmailAndPassword,
    TResult Function()? logInWithGoogle,
    TResult Function()? logInWithApple,
  }) {
    return resetPassword?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signInStarted,
    TResult Function()? signUpStarted,
    TResult Function(String email)? resetPassword,
    TResult Function(String email, String password)?
        registerWithEmailAndPassword,
    TResult Function(String email, String password)? logInWithEmailAndPassword,
    TResult Function()? logInWithGoogle,
    TResult Function()? logInWithApple,
    required TResult orElse(),
  }) {
    if (resetPassword != null) {
      return resetPassword(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignInStarted value) signInStarted,
    required TResult Function(_SignUpStarted value) signUpStarted,
    required TResult Function(_ResetPassword value) resetPassword,
    required TResult Function(_RegisterWithEmailAndPassword value)
        registerWithEmailAndPassword,
    required TResult Function(_LogInWithEmailAndPassword value)
        logInWithEmailAndPassword,
    required TResult Function(_LogInWithGoogle value) logInWithGoogle,
    required TResult Function(_LogInWithApple value) logInWithApple,
  }) {
    return resetPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SignInStarted value)? signInStarted,
    TResult Function(_SignUpStarted value)? signUpStarted,
    TResult Function(_ResetPassword value)? resetPassword,
    TResult Function(_RegisterWithEmailAndPassword value)?
        registerWithEmailAndPassword,
    TResult Function(_LogInWithEmailAndPassword value)?
        logInWithEmailAndPassword,
    TResult Function(_LogInWithGoogle value)? logInWithGoogle,
    TResult Function(_LogInWithApple value)? logInWithApple,
  }) {
    return resetPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignInStarted value)? signInStarted,
    TResult Function(_SignUpStarted value)? signUpStarted,
    TResult Function(_ResetPassword value)? resetPassword,
    TResult Function(_RegisterWithEmailAndPassword value)?
        registerWithEmailAndPassword,
    TResult Function(_LogInWithEmailAndPassword value)?
        logInWithEmailAndPassword,
    TResult Function(_LogInWithGoogle value)? logInWithGoogle,
    TResult Function(_LogInWithApple value)? logInWithApple,
    required TResult orElse(),
  }) {
    if (resetPassword != null) {
      return resetPassword(this);
    }
    return orElse();
  }
}

abstract class _ResetPassword implements AuthEvent {
  const factory _ResetPassword({required String email}) = _$_ResetPassword;

  String get email;
  @JsonKey(ignore: true)
  _$ResetPasswordCopyWith<_ResetPassword> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RegisterWithEmailAndPasswordCopyWith<$Res> {
  factory _$RegisterWithEmailAndPasswordCopyWith(
          _RegisterWithEmailAndPassword value,
          $Res Function(_RegisterWithEmailAndPassword) then) =
      __$RegisterWithEmailAndPasswordCopyWithImpl<$Res>;
  $Res call({String email, String password});
}

/// @nodoc
class __$RegisterWithEmailAndPasswordCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements _$RegisterWithEmailAndPasswordCopyWith<$Res> {
  __$RegisterWithEmailAndPasswordCopyWithImpl(
      _RegisterWithEmailAndPassword _value,
      $Res Function(_RegisterWithEmailAndPassword) _then)
      : super(_value, (v) => _then(v as _RegisterWithEmailAndPassword));

  @override
  _RegisterWithEmailAndPassword get _value =>
      super._value as _RegisterWithEmailAndPassword;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_RegisterWithEmailAndPassword(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_RegisterWithEmailAndPassword implements _RegisterWithEmailAndPassword {
  const _$_RegisterWithEmailAndPassword(
      {required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.registerWithEmailAndPassword(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RegisterWithEmailAndPassword &&
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
  _$RegisterWithEmailAndPasswordCopyWith<_RegisterWithEmailAndPassword>
      get copyWith => __$RegisterWithEmailAndPasswordCopyWithImpl<
          _RegisterWithEmailAndPassword>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signInStarted,
    required TResult Function() signUpStarted,
    required TResult Function(String email) resetPassword,
    required TResult Function(String email, String password)
        registerWithEmailAndPassword,
    required TResult Function(String email, String password)
        logInWithEmailAndPassword,
    required TResult Function() logInWithGoogle,
    required TResult Function() logInWithApple,
  }) {
    return registerWithEmailAndPassword(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? signInStarted,
    TResult Function()? signUpStarted,
    TResult Function(String email)? resetPassword,
    TResult Function(String email, String password)?
        registerWithEmailAndPassword,
    TResult Function(String email, String password)? logInWithEmailAndPassword,
    TResult Function()? logInWithGoogle,
    TResult Function()? logInWithApple,
  }) {
    return registerWithEmailAndPassword?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signInStarted,
    TResult Function()? signUpStarted,
    TResult Function(String email)? resetPassword,
    TResult Function(String email, String password)?
        registerWithEmailAndPassword,
    TResult Function(String email, String password)? logInWithEmailAndPassword,
    TResult Function()? logInWithGoogle,
    TResult Function()? logInWithApple,
    required TResult orElse(),
  }) {
    if (registerWithEmailAndPassword != null) {
      return registerWithEmailAndPassword(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignInStarted value) signInStarted,
    required TResult Function(_SignUpStarted value) signUpStarted,
    required TResult Function(_ResetPassword value) resetPassword,
    required TResult Function(_RegisterWithEmailAndPassword value)
        registerWithEmailAndPassword,
    required TResult Function(_LogInWithEmailAndPassword value)
        logInWithEmailAndPassword,
    required TResult Function(_LogInWithGoogle value) logInWithGoogle,
    required TResult Function(_LogInWithApple value) logInWithApple,
  }) {
    return registerWithEmailAndPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SignInStarted value)? signInStarted,
    TResult Function(_SignUpStarted value)? signUpStarted,
    TResult Function(_ResetPassword value)? resetPassword,
    TResult Function(_RegisterWithEmailAndPassword value)?
        registerWithEmailAndPassword,
    TResult Function(_LogInWithEmailAndPassword value)?
        logInWithEmailAndPassword,
    TResult Function(_LogInWithGoogle value)? logInWithGoogle,
    TResult Function(_LogInWithApple value)? logInWithApple,
  }) {
    return registerWithEmailAndPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignInStarted value)? signInStarted,
    TResult Function(_SignUpStarted value)? signUpStarted,
    TResult Function(_ResetPassword value)? resetPassword,
    TResult Function(_RegisterWithEmailAndPassword value)?
        registerWithEmailAndPassword,
    TResult Function(_LogInWithEmailAndPassword value)?
        logInWithEmailAndPassword,
    TResult Function(_LogInWithGoogle value)? logInWithGoogle,
    TResult Function(_LogInWithApple value)? logInWithApple,
    required TResult orElse(),
  }) {
    if (registerWithEmailAndPassword != null) {
      return registerWithEmailAndPassword(this);
    }
    return orElse();
  }
}

abstract class _RegisterWithEmailAndPassword implements AuthEvent {
  const factory _RegisterWithEmailAndPassword(
      {required String email,
      required String password}) = _$_RegisterWithEmailAndPassword;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$RegisterWithEmailAndPasswordCopyWith<_RegisterWithEmailAndPassword>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LogInWithEmailAndPasswordCopyWith<$Res> {
  factory _$LogInWithEmailAndPasswordCopyWith(_LogInWithEmailAndPassword value,
          $Res Function(_LogInWithEmailAndPassword) then) =
      __$LogInWithEmailAndPasswordCopyWithImpl<$Res>;
  $Res call({String email, String password});
}

/// @nodoc
class __$LogInWithEmailAndPasswordCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements _$LogInWithEmailAndPasswordCopyWith<$Res> {
  __$LogInWithEmailAndPasswordCopyWithImpl(_LogInWithEmailAndPassword _value,
      $Res Function(_LogInWithEmailAndPassword) _then)
      : super(_value, (v) => _then(v as _LogInWithEmailAndPassword));

  @override
  _LogInWithEmailAndPassword get _value =>
      super._value as _LogInWithEmailAndPassword;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_LogInWithEmailAndPassword(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LogInWithEmailAndPassword implements _LogInWithEmailAndPassword {
  const _$_LogInWithEmailAndPassword(
      {required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.logInWithEmailAndPassword(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LogInWithEmailAndPassword &&
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
  _$LogInWithEmailAndPasswordCopyWith<_LogInWithEmailAndPassword>
      get copyWith =>
          __$LogInWithEmailAndPasswordCopyWithImpl<_LogInWithEmailAndPassword>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signInStarted,
    required TResult Function() signUpStarted,
    required TResult Function(String email) resetPassword,
    required TResult Function(String email, String password)
        registerWithEmailAndPassword,
    required TResult Function(String email, String password)
        logInWithEmailAndPassword,
    required TResult Function() logInWithGoogle,
    required TResult Function() logInWithApple,
  }) {
    return logInWithEmailAndPassword(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? signInStarted,
    TResult Function()? signUpStarted,
    TResult Function(String email)? resetPassword,
    TResult Function(String email, String password)?
        registerWithEmailAndPassword,
    TResult Function(String email, String password)? logInWithEmailAndPassword,
    TResult Function()? logInWithGoogle,
    TResult Function()? logInWithApple,
  }) {
    return logInWithEmailAndPassword?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signInStarted,
    TResult Function()? signUpStarted,
    TResult Function(String email)? resetPassword,
    TResult Function(String email, String password)?
        registerWithEmailAndPassword,
    TResult Function(String email, String password)? logInWithEmailAndPassword,
    TResult Function()? logInWithGoogle,
    TResult Function()? logInWithApple,
    required TResult orElse(),
  }) {
    if (logInWithEmailAndPassword != null) {
      return logInWithEmailAndPassword(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignInStarted value) signInStarted,
    required TResult Function(_SignUpStarted value) signUpStarted,
    required TResult Function(_ResetPassword value) resetPassword,
    required TResult Function(_RegisterWithEmailAndPassword value)
        registerWithEmailAndPassword,
    required TResult Function(_LogInWithEmailAndPassword value)
        logInWithEmailAndPassword,
    required TResult Function(_LogInWithGoogle value) logInWithGoogle,
    required TResult Function(_LogInWithApple value) logInWithApple,
  }) {
    return logInWithEmailAndPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SignInStarted value)? signInStarted,
    TResult Function(_SignUpStarted value)? signUpStarted,
    TResult Function(_ResetPassword value)? resetPassword,
    TResult Function(_RegisterWithEmailAndPassword value)?
        registerWithEmailAndPassword,
    TResult Function(_LogInWithEmailAndPassword value)?
        logInWithEmailAndPassword,
    TResult Function(_LogInWithGoogle value)? logInWithGoogle,
    TResult Function(_LogInWithApple value)? logInWithApple,
  }) {
    return logInWithEmailAndPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignInStarted value)? signInStarted,
    TResult Function(_SignUpStarted value)? signUpStarted,
    TResult Function(_ResetPassword value)? resetPassword,
    TResult Function(_RegisterWithEmailAndPassword value)?
        registerWithEmailAndPassword,
    TResult Function(_LogInWithEmailAndPassword value)?
        logInWithEmailAndPassword,
    TResult Function(_LogInWithGoogle value)? logInWithGoogle,
    TResult Function(_LogInWithApple value)? logInWithApple,
    required TResult orElse(),
  }) {
    if (logInWithEmailAndPassword != null) {
      return logInWithEmailAndPassword(this);
    }
    return orElse();
  }
}

abstract class _LogInWithEmailAndPassword implements AuthEvent {
  const factory _LogInWithEmailAndPassword(
      {required String email,
      required String password}) = _$_LogInWithEmailAndPassword;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$LogInWithEmailAndPasswordCopyWith<_LogInWithEmailAndPassword>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LogInWithGoogleCopyWith<$Res> {
  factory _$LogInWithGoogleCopyWith(
          _LogInWithGoogle value, $Res Function(_LogInWithGoogle) then) =
      __$LogInWithGoogleCopyWithImpl<$Res>;
}

/// @nodoc
class __$LogInWithGoogleCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements _$LogInWithGoogleCopyWith<$Res> {
  __$LogInWithGoogleCopyWithImpl(
      _LogInWithGoogle _value, $Res Function(_LogInWithGoogle) _then)
      : super(_value, (v) => _then(v as _LogInWithGoogle));

  @override
  _LogInWithGoogle get _value => super._value as _LogInWithGoogle;
}

/// @nodoc

class _$_LogInWithGoogle implements _LogInWithGoogle {
  const _$_LogInWithGoogle();

  @override
  String toString() {
    return 'AuthEvent.logInWithGoogle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _LogInWithGoogle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signInStarted,
    required TResult Function() signUpStarted,
    required TResult Function(String email) resetPassword,
    required TResult Function(String email, String password)
        registerWithEmailAndPassword,
    required TResult Function(String email, String password)
        logInWithEmailAndPassword,
    required TResult Function() logInWithGoogle,
    required TResult Function() logInWithApple,
  }) {
    return logInWithGoogle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? signInStarted,
    TResult Function()? signUpStarted,
    TResult Function(String email)? resetPassword,
    TResult Function(String email, String password)?
        registerWithEmailAndPassword,
    TResult Function(String email, String password)? logInWithEmailAndPassword,
    TResult Function()? logInWithGoogle,
    TResult Function()? logInWithApple,
  }) {
    return logInWithGoogle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signInStarted,
    TResult Function()? signUpStarted,
    TResult Function(String email)? resetPassword,
    TResult Function(String email, String password)?
        registerWithEmailAndPassword,
    TResult Function(String email, String password)? logInWithEmailAndPassword,
    TResult Function()? logInWithGoogle,
    TResult Function()? logInWithApple,
    required TResult orElse(),
  }) {
    if (logInWithGoogle != null) {
      return logInWithGoogle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignInStarted value) signInStarted,
    required TResult Function(_SignUpStarted value) signUpStarted,
    required TResult Function(_ResetPassword value) resetPassword,
    required TResult Function(_RegisterWithEmailAndPassword value)
        registerWithEmailAndPassword,
    required TResult Function(_LogInWithEmailAndPassword value)
        logInWithEmailAndPassword,
    required TResult Function(_LogInWithGoogle value) logInWithGoogle,
    required TResult Function(_LogInWithApple value) logInWithApple,
  }) {
    return logInWithGoogle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SignInStarted value)? signInStarted,
    TResult Function(_SignUpStarted value)? signUpStarted,
    TResult Function(_ResetPassword value)? resetPassword,
    TResult Function(_RegisterWithEmailAndPassword value)?
        registerWithEmailAndPassword,
    TResult Function(_LogInWithEmailAndPassword value)?
        logInWithEmailAndPassword,
    TResult Function(_LogInWithGoogle value)? logInWithGoogle,
    TResult Function(_LogInWithApple value)? logInWithApple,
  }) {
    return logInWithGoogle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignInStarted value)? signInStarted,
    TResult Function(_SignUpStarted value)? signUpStarted,
    TResult Function(_ResetPassword value)? resetPassword,
    TResult Function(_RegisterWithEmailAndPassword value)?
        registerWithEmailAndPassword,
    TResult Function(_LogInWithEmailAndPassword value)?
        logInWithEmailAndPassword,
    TResult Function(_LogInWithGoogle value)? logInWithGoogle,
    TResult Function(_LogInWithApple value)? logInWithApple,
    required TResult orElse(),
  }) {
    if (logInWithGoogle != null) {
      return logInWithGoogle(this);
    }
    return orElse();
  }
}

abstract class _LogInWithGoogle implements AuthEvent {
  const factory _LogInWithGoogle() = _$_LogInWithGoogle;
}

/// @nodoc
abstract class _$LogInWithAppleCopyWith<$Res> {
  factory _$LogInWithAppleCopyWith(
          _LogInWithApple value, $Res Function(_LogInWithApple) then) =
      __$LogInWithAppleCopyWithImpl<$Res>;
}

/// @nodoc
class __$LogInWithAppleCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements _$LogInWithAppleCopyWith<$Res> {
  __$LogInWithAppleCopyWithImpl(
      _LogInWithApple _value, $Res Function(_LogInWithApple) _then)
      : super(_value, (v) => _then(v as _LogInWithApple));

  @override
  _LogInWithApple get _value => super._value as _LogInWithApple;
}

/// @nodoc

class _$_LogInWithApple implements _LogInWithApple {
  const _$_LogInWithApple();

  @override
  String toString() {
    return 'AuthEvent.logInWithApple()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _LogInWithApple);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signInStarted,
    required TResult Function() signUpStarted,
    required TResult Function(String email) resetPassword,
    required TResult Function(String email, String password)
        registerWithEmailAndPassword,
    required TResult Function(String email, String password)
        logInWithEmailAndPassword,
    required TResult Function() logInWithGoogle,
    required TResult Function() logInWithApple,
  }) {
    return logInWithApple();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? signInStarted,
    TResult Function()? signUpStarted,
    TResult Function(String email)? resetPassword,
    TResult Function(String email, String password)?
        registerWithEmailAndPassword,
    TResult Function(String email, String password)? logInWithEmailAndPassword,
    TResult Function()? logInWithGoogle,
    TResult Function()? logInWithApple,
  }) {
    return logInWithApple?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signInStarted,
    TResult Function()? signUpStarted,
    TResult Function(String email)? resetPassword,
    TResult Function(String email, String password)?
        registerWithEmailAndPassword,
    TResult Function(String email, String password)? logInWithEmailAndPassword,
    TResult Function()? logInWithGoogle,
    TResult Function()? logInWithApple,
    required TResult orElse(),
  }) {
    if (logInWithApple != null) {
      return logInWithApple();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignInStarted value) signInStarted,
    required TResult Function(_SignUpStarted value) signUpStarted,
    required TResult Function(_ResetPassword value) resetPassword,
    required TResult Function(_RegisterWithEmailAndPassword value)
        registerWithEmailAndPassword,
    required TResult Function(_LogInWithEmailAndPassword value)
        logInWithEmailAndPassword,
    required TResult Function(_LogInWithGoogle value) logInWithGoogle,
    required TResult Function(_LogInWithApple value) logInWithApple,
  }) {
    return logInWithApple(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SignInStarted value)? signInStarted,
    TResult Function(_SignUpStarted value)? signUpStarted,
    TResult Function(_ResetPassword value)? resetPassword,
    TResult Function(_RegisterWithEmailAndPassword value)?
        registerWithEmailAndPassword,
    TResult Function(_LogInWithEmailAndPassword value)?
        logInWithEmailAndPassword,
    TResult Function(_LogInWithGoogle value)? logInWithGoogle,
    TResult Function(_LogInWithApple value)? logInWithApple,
  }) {
    return logInWithApple?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignInStarted value)? signInStarted,
    TResult Function(_SignUpStarted value)? signUpStarted,
    TResult Function(_ResetPassword value)? resetPassword,
    TResult Function(_RegisterWithEmailAndPassword value)?
        registerWithEmailAndPassword,
    TResult Function(_LogInWithEmailAndPassword value)?
        logInWithEmailAndPassword,
    TResult Function(_LogInWithGoogle value)? logInWithGoogle,
    TResult Function(_LogInWithApple value)? logInWithApple,
    required TResult orElse(),
  }) {
    if (logInWithApple != null) {
      return logInWithApple(this);
    }
    return orElse();
  }
}

abstract class _LogInWithApple implements AuthEvent {
  const factory _LogInWithApple() = _$_LogInWithApple;
}

/// @nodoc
class _$AuthStateTearOff {
  const _$AuthStateTearOff();

  _AuthState call(
      {AuthView authView = const AuthView.signIn(),
      AuthStatus authStatus = const AuthStatus.none()}) {
    return _AuthState(
      authView: authView,
      authStatus: authStatus,
    );
  }
}

/// @nodoc
const $AuthState = _$AuthStateTearOff();

/// @nodoc
mixin _$AuthState {
  AuthView get authView => throw _privateConstructorUsedError;
  AuthStatus get authStatus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
  $Res call({AuthView authView, AuthStatus authStatus});

  $AuthViewCopyWith<$Res> get authView;
  $AuthStatusCopyWith<$Res> get authStatus;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;

  @override
  $Res call({
    Object? authView = freezed,
    Object? authStatus = freezed,
  }) {
    return _then(_value.copyWith(
      authView: authView == freezed
          ? _value.authView
          : authView // ignore: cast_nullable_to_non_nullable
              as AuthView,
      authStatus: authStatus == freezed
          ? _value.authStatus
          : authStatus // ignore: cast_nullable_to_non_nullable
              as AuthStatus,
    ));
  }

  @override
  $AuthViewCopyWith<$Res> get authView {
    return $AuthViewCopyWith<$Res>(_value.authView, (value) {
      return _then(_value.copyWith(authView: value));
    });
  }

  @override
  $AuthStatusCopyWith<$Res> get authStatus {
    return $AuthStatusCopyWith<$Res>(_value.authStatus, (value) {
      return _then(_value.copyWith(authStatus: value));
    });
  }
}

/// @nodoc
abstract class _$AuthStateCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$AuthStateCopyWith(
          _AuthState value, $Res Function(_AuthState) then) =
      __$AuthStateCopyWithImpl<$Res>;
  @override
  $Res call({AuthView authView, AuthStatus authStatus});

  @override
  $AuthViewCopyWith<$Res> get authView;
  @override
  $AuthStatusCopyWith<$Res> get authStatus;
}

/// @nodoc
class __$AuthStateCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$AuthStateCopyWith<$Res> {
  __$AuthStateCopyWithImpl(_AuthState _value, $Res Function(_AuthState) _then)
      : super(_value, (v) => _then(v as _AuthState));

  @override
  _AuthState get _value => super._value as _AuthState;

  @override
  $Res call({
    Object? authView = freezed,
    Object? authStatus = freezed,
  }) {
    return _then(_AuthState(
      authView: authView == freezed
          ? _value.authView
          : authView // ignore: cast_nullable_to_non_nullable
              as AuthView,
      authStatus: authStatus == freezed
          ? _value.authStatus
          : authStatus // ignore: cast_nullable_to_non_nullable
              as AuthStatus,
    ));
  }
}

/// @nodoc

class _$_AuthState implements _AuthState {
  const _$_AuthState(
      {this.authView = const AuthView.signIn(),
      this.authStatus = const AuthStatus.none()});

  @JsonKey()
  @override
  final AuthView authView;
  @JsonKey()
  @override
  final AuthStatus authStatus;

  @override
  String toString() {
    return 'AuthState(authView: $authView, authStatus: $authStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AuthState &&
            const DeepCollectionEquality().equals(other.authView, authView) &&
            const DeepCollectionEquality()
                .equals(other.authStatus, authStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(authView),
      const DeepCollectionEquality().hash(authStatus));

  @JsonKey(ignore: true)
  @override
  _$AuthStateCopyWith<_AuthState> get copyWith =>
      __$AuthStateCopyWithImpl<_AuthState>(this, _$identity);
}

abstract class _AuthState implements AuthState {
  const factory _AuthState({AuthView authView, AuthStatus authStatus}) =
      _$_AuthState;

  @override
  AuthView get authView;
  @override
  AuthStatus get authStatus;
  @override
  @JsonKey(ignore: true)
  _$AuthStateCopyWith<_AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$AuthStatusTearOff {
  const _$AuthStatusTearOff();

  _AuthNone none() {
    return const _AuthNone();
  }

  _AuthLoadInProgress loadingInProgress() {
    return const _AuthLoadInProgress();
  }

  _AuthSuccess success() {
    return const _AuthSuccess();
  }

  _AuthError error() {
    return const _AuthError();
  }
}

/// @nodoc
const $AuthStatus = _$AuthStatusTearOff();

/// @nodoc
mixin _$AuthStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function() loadingInProgress,
    required TResult Function() success,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? loadingInProgress,
    TResult Function()? success,
    TResult Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? loadingInProgress,
    TResult Function()? success,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthNone value) none,
    required TResult Function(_AuthLoadInProgress value) loadingInProgress,
    required TResult Function(_AuthSuccess value) success,
    required TResult Function(_AuthError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AuthNone value)? none,
    TResult Function(_AuthLoadInProgress value)? loadingInProgress,
    TResult Function(_AuthSuccess value)? success,
    TResult Function(_AuthError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthNone value)? none,
    TResult Function(_AuthLoadInProgress value)? loadingInProgress,
    TResult Function(_AuthSuccess value)? success,
    TResult Function(_AuthError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStatusCopyWith<$Res> {
  factory $AuthStatusCopyWith(
          AuthStatus value, $Res Function(AuthStatus) then) =
      _$AuthStatusCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStatusCopyWithImpl<$Res> implements $AuthStatusCopyWith<$Res> {
  _$AuthStatusCopyWithImpl(this._value, this._then);

  final AuthStatus _value;
  // ignore: unused_field
  final $Res Function(AuthStatus) _then;
}

/// @nodoc
abstract class _$AuthNoneCopyWith<$Res> {
  factory _$AuthNoneCopyWith(_AuthNone value, $Res Function(_AuthNone) then) =
      __$AuthNoneCopyWithImpl<$Res>;
}

/// @nodoc
class __$AuthNoneCopyWithImpl<$Res> extends _$AuthStatusCopyWithImpl<$Res>
    implements _$AuthNoneCopyWith<$Res> {
  __$AuthNoneCopyWithImpl(_AuthNone _value, $Res Function(_AuthNone) _then)
      : super(_value, (v) => _then(v as _AuthNone));

  @override
  _AuthNone get _value => super._value as _AuthNone;
}

/// @nodoc

class _$_AuthNone implements _AuthNone {
  const _$_AuthNone();

  @override
  String toString() {
    return 'AuthStatus.none()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _AuthNone);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function() loadingInProgress,
    required TResult Function() success,
    required TResult Function() error,
  }) {
    return none();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? loadingInProgress,
    TResult Function()? success,
    TResult Function()? error,
  }) {
    return none?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? loadingInProgress,
    TResult Function()? success,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (none != null) {
      return none();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthNone value) none,
    required TResult Function(_AuthLoadInProgress value) loadingInProgress,
    required TResult Function(_AuthSuccess value) success,
    required TResult Function(_AuthError value) error,
  }) {
    return none(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AuthNone value)? none,
    TResult Function(_AuthLoadInProgress value)? loadingInProgress,
    TResult Function(_AuthSuccess value)? success,
    TResult Function(_AuthError value)? error,
  }) {
    return none?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthNone value)? none,
    TResult Function(_AuthLoadInProgress value)? loadingInProgress,
    TResult Function(_AuthSuccess value)? success,
    TResult Function(_AuthError value)? error,
    required TResult orElse(),
  }) {
    if (none != null) {
      return none(this);
    }
    return orElse();
  }
}

abstract class _AuthNone implements AuthStatus {
  const factory _AuthNone() = _$_AuthNone;
}

/// @nodoc
abstract class _$AuthLoadInProgressCopyWith<$Res> {
  factory _$AuthLoadInProgressCopyWith(
          _AuthLoadInProgress value, $Res Function(_AuthLoadInProgress) then) =
      __$AuthLoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$AuthLoadInProgressCopyWithImpl<$Res>
    extends _$AuthStatusCopyWithImpl<$Res>
    implements _$AuthLoadInProgressCopyWith<$Res> {
  __$AuthLoadInProgressCopyWithImpl(
      _AuthLoadInProgress _value, $Res Function(_AuthLoadInProgress) _then)
      : super(_value, (v) => _then(v as _AuthLoadInProgress));

  @override
  _AuthLoadInProgress get _value => super._value as _AuthLoadInProgress;
}

/// @nodoc

class _$_AuthLoadInProgress implements _AuthLoadInProgress {
  const _$_AuthLoadInProgress();

  @override
  String toString() {
    return 'AuthStatus.loadingInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _AuthLoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function() loadingInProgress,
    required TResult Function() success,
    required TResult Function() error,
  }) {
    return loadingInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? loadingInProgress,
    TResult Function()? success,
    TResult Function()? error,
  }) {
    return loadingInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? loadingInProgress,
    TResult Function()? success,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loadingInProgress != null) {
      return loadingInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthNone value) none,
    required TResult Function(_AuthLoadInProgress value) loadingInProgress,
    required TResult Function(_AuthSuccess value) success,
    required TResult Function(_AuthError value) error,
  }) {
    return loadingInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AuthNone value)? none,
    TResult Function(_AuthLoadInProgress value)? loadingInProgress,
    TResult Function(_AuthSuccess value)? success,
    TResult Function(_AuthError value)? error,
  }) {
    return loadingInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthNone value)? none,
    TResult Function(_AuthLoadInProgress value)? loadingInProgress,
    TResult Function(_AuthSuccess value)? success,
    TResult Function(_AuthError value)? error,
    required TResult orElse(),
  }) {
    if (loadingInProgress != null) {
      return loadingInProgress(this);
    }
    return orElse();
  }
}

abstract class _AuthLoadInProgress implements AuthStatus {
  const factory _AuthLoadInProgress() = _$_AuthLoadInProgress;
}

/// @nodoc
abstract class _$AuthSuccessCopyWith<$Res> {
  factory _$AuthSuccessCopyWith(
          _AuthSuccess value, $Res Function(_AuthSuccess) then) =
      __$AuthSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$AuthSuccessCopyWithImpl<$Res> extends _$AuthStatusCopyWithImpl<$Res>
    implements _$AuthSuccessCopyWith<$Res> {
  __$AuthSuccessCopyWithImpl(
      _AuthSuccess _value, $Res Function(_AuthSuccess) _then)
      : super(_value, (v) => _then(v as _AuthSuccess));

  @override
  _AuthSuccess get _value => super._value as _AuthSuccess;
}

/// @nodoc

class _$_AuthSuccess implements _AuthSuccess {
  const _$_AuthSuccess();

  @override
  String toString() {
    return 'AuthStatus.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _AuthSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function() loadingInProgress,
    required TResult Function() success,
    required TResult Function() error,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? loadingInProgress,
    TResult Function()? success,
    TResult Function()? error,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? loadingInProgress,
    TResult Function()? success,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthNone value) none,
    required TResult Function(_AuthLoadInProgress value) loadingInProgress,
    required TResult Function(_AuthSuccess value) success,
    required TResult Function(_AuthError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AuthNone value)? none,
    TResult Function(_AuthLoadInProgress value)? loadingInProgress,
    TResult Function(_AuthSuccess value)? success,
    TResult Function(_AuthError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthNone value)? none,
    TResult Function(_AuthLoadInProgress value)? loadingInProgress,
    TResult Function(_AuthSuccess value)? success,
    TResult Function(_AuthError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _AuthSuccess implements AuthStatus {
  const factory _AuthSuccess() = _$_AuthSuccess;
}

/// @nodoc
abstract class _$AuthErrorCopyWith<$Res> {
  factory _$AuthErrorCopyWith(
          _AuthError value, $Res Function(_AuthError) then) =
      __$AuthErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$AuthErrorCopyWithImpl<$Res> extends _$AuthStatusCopyWithImpl<$Res>
    implements _$AuthErrorCopyWith<$Res> {
  __$AuthErrorCopyWithImpl(_AuthError _value, $Res Function(_AuthError) _then)
      : super(_value, (v) => _then(v as _AuthError));

  @override
  _AuthError get _value => super._value as _AuthError;
}

/// @nodoc

class _$_AuthError implements _AuthError {
  const _$_AuthError();

  @override
  String toString() {
    return 'AuthStatus.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _AuthError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function() loadingInProgress,
    required TResult Function() success,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? loadingInProgress,
    TResult Function()? success,
    TResult Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? loadingInProgress,
    TResult Function()? success,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthNone value) none,
    required TResult Function(_AuthLoadInProgress value) loadingInProgress,
    required TResult Function(_AuthSuccess value) success,
    required TResult Function(_AuthError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AuthNone value)? none,
    TResult Function(_AuthLoadInProgress value)? loadingInProgress,
    TResult Function(_AuthSuccess value)? success,
    TResult Function(_AuthError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthNone value)? none,
    TResult Function(_AuthLoadInProgress value)? loadingInProgress,
    TResult Function(_AuthSuccess value)? success,
    TResult Function(_AuthError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _AuthError implements AuthStatus {
  const factory _AuthError() = _$_AuthError;
}

/// @nodoc
class _$AuthViewTearOff {
  const _$AuthViewTearOff();

  SignIn signIn() {
    return const SignIn();
  }

  SignUp signUp() {
    return const SignUp();
  }
}

/// @nodoc
const $AuthView = _$AuthViewTearOff();

/// @nodoc
mixin _$AuthView {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signIn,
    required TResult Function() signUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? signIn,
    TResult Function()? signUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signIn,
    TResult Function()? signUp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignIn value) signIn,
    required TResult Function(SignUp value) signUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SignIn value)? signIn,
    TResult Function(SignUp value)? signUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignIn value)? signIn,
    TResult Function(SignUp value)? signUp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthViewCopyWith<$Res> {
  factory $AuthViewCopyWith(AuthView value, $Res Function(AuthView) then) =
      _$AuthViewCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthViewCopyWithImpl<$Res> implements $AuthViewCopyWith<$Res> {
  _$AuthViewCopyWithImpl(this._value, this._then);

  final AuthView _value;
  // ignore: unused_field
  final $Res Function(AuthView) _then;
}

/// @nodoc
abstract class $SignInCopyWith<$Res> {
  factory $SignInCopyWith(SignIn value, $Res Function(SignIn) then) =
      _$SignInCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignInCopyWithImpl<$Res> extends _$AuthViewCopyWithImpl<$Res>
    implements $SignInCopyWith<$Res> {
  _$SignInCopyWithImpl(SignIn _value, $Res Function(SignIn) _then)
      : super(_value, (v) => _then(v as SignIn));

  @override
  SignIn get _value => super._value as SignIn;
}

/// @nodoc

class _$SignIn implements SignIn {
  const _$SignIn();

  @override
  String toString() {
    return 'AuthView.signIn()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SignIn);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signIn,
    required TResult Function() signUp,
  }) {
    return signIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? signIn,
    TResult Function()? signUp,
  }) {
    return signIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signIn,
    TResult Function()? signUp,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignIn value) signIn,
    required TResult Function(SignUp value) signUp,
  }) {
    return signIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SignIn value)? signIn,
    TResult Function(SignUp value)? signUp,
  }) {
    return signIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignIn value)? signIn,
    TResult Function(SignUp value)? signUp,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(this);
    }
    return orElse();
  }
}

abstract class SignIn implements AuthView {
  const factory SignIn() = _$SignIn;
}

/// @nodoc
abstract class $SignUpCopyWith<$Res> {
  factory $SignUpCopyWith(SignUp value, $Res Function(SignUp) then) =
      _$SignUpCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignUpCopyWithImpl<$Res> extends _$AuthViewCopyWithImpl<$Res>
    implements $SignUpCopyWith<$Res> {
  _$SignUpCopyWithImpl(SignUp _value, $Res Function(SignUp) _then)
      : super(_value, (v) => _then(v as SignUp));

  @override
  SignUp get _value => super._value as SignUp;
}

/// @nodoc

class _$SignUp implements SignUp {
  const _$SignUp();

  @override
  String toString() {
    return 'AuthView.signUp()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SignUp);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signIn,
    required TResult Function() signUp,
  }) {
    return signUp();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? signIn,
    TResult Function()? signUp,
  }) {
    return signUp?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signIn,
    TResult Function()? signUp,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignIn value) signIn,
    required TResult Function(SignUp value) signUp,
  }) {
    return signUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SignIn value)? signIn,
    TResult Function(SignUp value)? signUp,
  }) {
    return signUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignIn value)? signIn,
    TResult Function(SignUp value)? signUp,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(this);
    }
    return orElse();
  }
}

abstract class SignUp implements AuthView {
  const factory SignUp() = _$SignUp;
}
