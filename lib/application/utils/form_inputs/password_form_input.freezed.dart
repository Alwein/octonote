// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'password_form_input.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PasswordInputTearOff {
  const _$PasswordInputTearOff();

  _PasswordPure pure({String password = ""}) {
    return _PasswordPure(
      password: password,
    );
  }

  _PasswordDirty dirty({required String password}) {
    return _PasswordDirty(
      password: password,
    );
  }

  _PasswordInvalid invalid({required String password}) {
    return _PasswordInvalid(
      password: password,
    );
  }
}

/// @nodoc
const $PasswordInput = _$PasswordInputTearOff();

/// @nodoc
mixin _$PasswordInput {
  String get password => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String password) pure,
    required TResult Function(String password) dirty,
    required TResult Function(String password) invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String password)? pure,
    TResult Function(String password)? dirty,
    TResult Function(String password)? invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String password)? pure,
    TResult Function(String password)? dirty,
    TResult Function(String password)? invalid,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PasswordPure value) pure,
    required TResult Function(_PasswordDirty value) dirty,
    required TResult Function(_PasswordInvalid value) invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PasswordPure value)? pure,
    TResult Function(_PasswordDirty value)? dirty,
    TResult Function(_PasswordInvalid value)? invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PasswordPure value)? pure,
    TResult Function(_PasswordDirty value)? dirty,
    TResult Function(_PasswordInvalid value)? invalid,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PasswordInputCopyWith<PasswordInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordInputCopyWith<$Res> {
  factory $PasswordInputCopyWith(
          PasswordInput value, $Res Function(PasswordInput) then) =
      _$PasswordInputCopyWithImpl<$Res>;
  $Res call({String password});
}

/// @nodoc
class _$PasswordInputCopyWithImpl<$Res>
    implements $PasswordInputCopyWith<$Res> {
  _$PasswordInputCopyWithImpl(this._value, this._then);

  final PasswordInput _value;
  // ignore: unused_field
  final $Res Function(PasswordInput) _then;

  @override
  $Res call({
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$PasswordPureCopyWith<$Res>
    implements $PasswordInputCopyWith<$Res> {
  factory _$PasswordPureCopyWith(
          _PasswordPure value, $Res Function(_PasswordPure) then) =
      __$PasswordPureCopyWithImpl<$Res>;
  @override
  $Res call({String password});
}

/// @nodoc
class __$PasswordPureCopyWithImpl<$Res>
    extends _$PasswordInputCopyWithImpl<$Res>
    implements _$PasswordPureCopyWith<$Res> {
  __$PasswordPureCopyWithImpl(
      _PasswordPure _value, $Res Function(_PasswordPure) _then)
      : super(_value, (v) => _then(v as _PasswordPure));

  @override
  _PasswordPure get _value => super._value as _PasswordPure;

  @override
  $Res call({
    Object? password = freezed,
  }) {
    return _then(_PasswordPure(
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PasswordPure extends _PasswordPure {
  const _$_PasswordPure({this.password = ""}) : super._();

  @JsonKey()
  @override
  final String password;

  @override
  String toString() {
    return 'PasswordInput.pure(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PasswordPure &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$PasswordPureCopyWith<_PasswordPure> get copyWith =>
      __$PasswordPureCopyWithImpl<_PasswordPure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String password) pure,
    required TResult Function(String password) dirty,
    required TResult Function(String password) invalid,
  }) {
    return pure(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String password)? pure,
    TResult Function(String password)? dirty,
    TResult Function(String password)? invalid,
  }) {
    return pure?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String password)? pure,
    TResult Function(String password)? dirty,
    TResult Function(String password)? invalid,
    required TResult orElse(),
  }) {
    if (pure != null) {
      return pure(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PasswordPure value) pure,
    required TResult Function(_PasswordDirty value) dirty,
    required TResult Function(_PasswordInvalid value) invalid,
  }) {
    return pure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PasswordPure value)? pure,
    TResult Function(_PasswordDirty value)? dirty,
    TResult Function(_PasswordInvalid value)? invalid,
  }) {
    return pure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PasswordPure value)? pure,
    TResult Function(_PasswordDirty value)? dirty,
    TResult Function(_PasswordInvalid value)? invalid,
    required TResult orElse(),
  }) {
    if (pure != null) {
      return pure(this);
    }
    return orElse();
  }
}

abstract class _PasswordPure extends PasswordInput {
  const factory _PasswordPure({String password}) = _$_PasswordPure;
  const _PasswordPure._() : super._();

  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$PasswordPureCopyWith<_PasswordPure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PasswordDirtyCopyWith<$Res>
    implements $PasswordInputCopyWith<$Res> {
  factory _$PasswordDirtyCopyWith(
          _PasswordDirty value, $Res Function(_PasswordDirty) then) =
      __$PasswordDirtyCopyWithImpl<$Res>;
  @override
  $Res call({String password});
}

/// @nodoc
class __$PasswordDirtyCopyWithImpl<$Res>
    extends _$PasswordInputCopyWithImpl<$Res>
    implements _$PasswordDirtyCopyWith<$Res> {
  __$PasswordDirtyCopyWithImpl(
      _PasswordDirty _value, $Res Function(_PasswordDirty) _then)
      : super(_value, (v) => _then(v as _PasswordDirty));

  @override
  _PasswordDirty get _value => super._value as _PasswordDirty;

  @override
  $Res call({
    Object? password = freezed,
  }) {
    return _then(_PasswordDirty(
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PasswordDirty extends _PasswordDirty {
  const _$_PasswordDirty({required this.password}) : super._();

  @override
  final String password;

  @override
  String toString() {
    return 'PasswordInput.dirty(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PasswordDirty &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$PasswordDirtyCopyWith<_PasswordDirty> get copyWith =>
      __$PasswordDirtyCopyWithImpl<_PasswordDirty>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String password) pure,
    required TResult Function(String password) dirty,
    required TResult Function(String password) invalid,
  }) {
    return dirty(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String password)? pure,
    TResult Function(String password)? dirty,
    TResult Function(String password)? invalid,
  }) {
    return dirty?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String password)? pure,
    TResult Function(String password)? dirty,
    TResult Function(String password)? invalid,
    required TResult orElse(),
  }) {
    if (dirty != null) {
      return dirty(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PasswordPure value) pure,
    required TResult Function(_PasswordDirty value) dirty,
    required TResult Function(_PasswordInvalid value) invalid,
  }) {
    return dirty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PasswordPure value)? pure,
    TResult Function(_PasswordDirty value)? dirty,
    TResult Function(_PasswordInvalid value)? invalid,
  }) {
    return dirty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PasswordPure value)? pure,
    TResult Function(_PasswordDirty value)? dirty,
    TResult Function(_PasswordInvalid value)? invalid,
    required TResult orElse(),
  }) {
    if (dirty != null) {
      return dirty(this);
    }
    return orElse();
  }
}

abstract class _PasswordDirty extends PasswordInput {
  const factory _PasswordDirty({required String password}) = _$_PasswordDirty;
  const _PasswordDirty._() : super._();

  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$PasswordDirtyCopyWith<_PasswordDirty> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PasswordInvalidCopyWith<$Res>
    implements $PasswordInputCopyWith<$Res> {
  factory _$PasswordInvalidCopyWith(
          _PasswordInvalid value, $Res Function(_PasswordInvalid) then) =
      __$PasswordInvalidCopyWithImpl<$Res>;
  @override
  $Res call({String password});
}

/// @nodoc
class __$PasswordInvalidCopyWithImpl<$Res>
    extends _$PasswordInputCopyWithImpl<$Res>
    implements _$PasswordInvalidCopyWith<$Res> {
  __$PasswordInvalidCopyWithImpl(
      _PasswordInvalid _value, $Res Function(_PasswordInvalid) _then)
      : super(_value, (v) => _then(v as _PasswordInvalid));

  @override
  _PasswordInvalid get _value => super._value as _PasswordInvalid;

  @override
  $Res call({
    Object? password = freezed,
  }) {
    return _then(_PasswordInvalid(
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PasswordInvalid extends _PasswordInvalid {
  const _$_PasswordInvalid({required this.password}) : super._();

  @override
  final String password;

  @override
  String toString() {
    return 'PasswordInput.invalid(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PasswordInvalid &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$PasswordInvalidCopyWith<_PasswordInvalid> get copyWith =>
      __$PasswordInvalidCopyWithImpl<_PasswordInvalid>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String password) pure,
    required TResult Function(String password) dirty,
    required TResult Function(String password) invalid,
  }) {
    return invalid(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String password)? pure,
    TResult Function(String password)? dirty,
    TResult Function(String password)? invalid,
  }) {
    return invalid?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String password)? pure,
    TResult Function(String password)? dirty,
    TResult Function(String password)? invalid,
    required TResult orElse(),
  }) {
    if (invalid != null) {
      return invalid(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PasswordPure value) pure,
    required TResult Function(_PasswordDirty value) dirty,
    required TResult Function(_PasswordInvalid value) invalid,
  }) {
    return invalid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PasswordPure value)? pure,
    TResult Function(_PasswordDirty value)? dirty,
    TResult Function(_PasswordInvalid value)? invalid,
  }) {
    return invalid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PasswordPure value)? pure,
    TResult Function(_PasswordDirty value)? dirty,
    TResult Function(_PasswordInvalid value)? invalid,
    required TResult orElse(),
  }) {
    if (invalid != null) {
      return invalid(this);
    }
    return orElse();
  }
}

abstract class _PasswordInvalid extends PasswordInput {
  const factory _PasswordInvalid({required String password}) =
      _$_PasswordInvalid;
  const _PasswordInvalid._() : super._();

  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$PasswordInvalidCopyWith<_PasswordInvalid> get copyWith =>
      throw _privateConstructorUsedError;
}
