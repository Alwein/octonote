// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'email_form_input.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$EmailInputTearOff {
  const _$EmailInputTearOff();

  _EmailPure pure({String email = ""}) {
    return _EmailPure(
      email: email,
    );
  }

  _EmailDirty dirty({required String email}) {
    return _EmailDirty(
      email: email,
    );
  }

  _EmailInvalid invalid({required String email}) {
    return _EmailInvalid(
      email: email,
    );
  }
}

/// @nodoc
const $EmailInput = _$EmailInputTearOff();

/// @nodoc
mixin _$EmailInput {
  String get email => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) pure,
    required TResult Function(String email) dirty,
    required TResult Function(String email) invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? pure,
    TResult Function(String email)? dirty,
    TResult Function(String email)? invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? pure,
    TResult Function(String email)? dirty,
    TResult Function(String email)? invalid,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailPure value) pure,
    required TResult Function(_EmailDirty value) dirty,
    required TResult Function(_EmailInvalid value) invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailPure value)? pure,
    TResult Function(_EmailDirty value)? dirty,
    TResult Function(_EmailInvalid value)? invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailPure value)? pure,
    TResult Function(_EmailDirty value)? dirty,
    TResult Function(_EmailInvalid value)? invalid,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EmailInputCopyWith<EmailInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailInputCopyWith<$Res> {
  factory $EmailInputCopyWith(
          EmailInput value, $Res Function(EmailInput) then) =
      _$EmailInputCopyWithImpl<$Res>;
  $Res call({String email});
}

/// @nodoc
class _$EmailInputCopyWithImpl<$Res> implements $EmailInputCopyWith<$Res> {
  _$EmailInputCopyWithImpl(this._value, this._then);

  final EmailInput _value;
  // ignore: unused_field
  final $Res Function(EmailInput) _then;

  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$EmailPureCopyWith<$Res> implements $EmailInputCopyWith<$Res> {
  factory _$EmailPureCopyWith(
          _EmailPure value, $Res Function(_EmailPure) then) =
      __$EmailPureCopyWithImpl<$Res>;
  @override
  $Res call({String email});
}

/// @nodoc
class __$EmailPureCopyWithImpl<$Res> extends _$EmailInputCopyWithImpl<$Res>
    implements _$EmailPureCopyWith<$Res> {
  __$EmailPureCopyWithImpl(_EmailPure _value, $Res Function(_EmailPure) _then)
      : super(_value, (v) => _then(v as _EmailPure));

  @override
  _EmailPure get _value => super._value as _EmailPure;

  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(_EmailPure(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EmailPure extends _EmailPure {
  const _$_EmailPure({this.email = ""}) : super._();

  @JsonKey()
  @override
  final String email;

  @override
  String toString() {
    return 'EmailInput.pure(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EmailPure &&
            const DeepCollectionEquality().equals(other.email, email));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(email));

  @JsonKey(ignore: true)
  @override
  _$EmailPureCopyWith<_EmailPure> get copyWith =>
      __$EmailPureCopyWithImpl<_EmailPure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) pure,
    required TResult Function(String email) dirty,
    required TResult Function(String email) invalid,
  }) {
    return pure(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? pure,
    TResult Function(String email)? dirty,
    TResult Function(String email)? invalid,
  }) {
    return pure?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? pure,
    TResult Function(String email)? dirty,
    TResult Function(String email)? invalid,
    required TResult orElse(),
  }) {
    if (pure != null) {
      return pure(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailPure value) pure,
    required TResult Function(_EmailDirty value) dirty,
    required TResult Function(_EmailInvalid value) invalid,
  }) {
    return pure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailPure value)? pure,
    TResult Function(_EmailDirty value)? dirty,
    TResult Function(_EmailInvalid value)? invalid,
  }) {
    return pure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailPure value)? pure,
    TResult Function(_EmailDirty value)? dirty,
    TResult Function(_EmailInvalid value)? invalid,
    required TResult orElse(),
  }) {
    if (pure != null) {
      return pure(this);
    }
    return orElse();
  }
}

abstract class _EmailPure extends EmailInput {
  const factory _EmailPure({String email}) = _$_EmailPure;
  const _EmailPure._() : super._();

  @override
  String get email;
  @override
  @JsonKey(ignore: true)
  _$EmailPureCopyWith<_EmailPure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$EmailDirtyCopyWith<$Res> implements $EmailInputCopyWith<$Res> {
  factory _$EmailDirtyCopyWith(
          _EmailDirty value, $Res Function(_EmailDirty) then) =
      __$EmailDirtyCopyWithImpl<$Res>;
  @override
  $Res call({String email});
}

/// @nodoc
class __$EmailDirtyCopyWithImpl<$Res> extends _$EmailInputCopyWithImpl<$Res>
    implements _$EmailDirtyCopyWith<$Res> {
  __$EmailDirtyCopyWithImpl(
      _EmailDirty _value, $Res Function(_EmailDirty) _then)
      : super(_value, (v) => _then(v as _EmailDirty));

  @override
  _EmailDirty get _value => super._value as _EmailDirty;

  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(_EmailDirty(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EmailDirty extends _EmailDirty {
  const _$_EmailDirty({required this.email}) : super._();

  @override
  final String email;

  @override
  String toString() {
    return 'EmailInput.dirty(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EmailDirty &&
            const DeepCollectionEquality().equals(other.email, email));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(email));

  @JsonKey(ignore: true)
  @override
  _$EmailDirtyCopyWith<_EmailDirty> get copyWith =>
      __$EmailDirtyCopyWithImpl<_EmailDirty>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) pure,
    required TResult Function(String email) dirty,
    required TResult Function(String email) invalid,
  }) {
    return dirty(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? pure,
    TResult Function(String email)? dirty,
    TResult Function(String email)? invalid,
  }) {
    return dirty?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? pure,
    TResult Function(String email)? dirty,
    TResult Function(String email)? invalid,
    required TResult orElse(),
  }) {
    if (dirty != null) {
      return dirty(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailPure value) pure,
    required TResult Function(_EmailDirty value) dirty,
    required TResult Function(_EmailInvalid value) invalid,
  }) {
    return dirty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailPure value)? pure,
    TResult Function(_EmailDirty value)? dirty,
    TResult Function(_EmailInvalid value)? invalid,
  }) {
    return dirty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailPure value)? pure,
    TResult Function(_EmailDirty value)? dirty,
    TResult Function(_EmailInvalid value)? invalid,
    required TResult orElse(),
  }) {
    if (dirty != null) {
      return dirty(this);
    }
    return orElse();
  }
}

abstract class _EmailDirty extends EmailInput {
  const factory _EmailDirty({required String email}) = _$_EmailDirty;
  const _EmailDirty._() : super._();

  @override
  String get email;
  @override
  @JsonKey(ignore: true)
  _$EmailDirtyCopyWith<_EmailDirty> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$EmailInvalidCopyWith<$Res>
    implements $EmailInputCopyWith<$Res> {
  factory _$EmailInvalidCopyWith(
          _EmailInvalid value, $Res Function(_EmailInvalid) then) =
      __$EmailInvalidCopyWithImpl<$Res>;
  @override
  $Res call({String email});
}

/// @nodoc
class __$EmailInvalidCopyWithImpl<$Res> extends _$EmailInputCopyWithImpl<$Res>
    implements _$EmailInvalidCopyWith<$Res> {
  __$EmailInvalidCopyWithImpl(
      _EmailInvalid _value, $Res Function(_EmailInvalid) _then)
      : super(_value, (v) => _then(v as _EmailInvalid));

  @override
  _EmailInvalid get _value => super._value as _EmailInvalid;

  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(_EmailInvalid(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EmailInvalid extends _EmailInvalid {
  const _$_EmailInvalid({required this.email}) : super._();

  @override
  final String email;

  @override
  String toString() {
    return 'EmailInput.invalid(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EmailInvalid &&
            const DeepCollectionEquality().equals(other.email, email));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(email));

  @JsonKey(ignore: true)
  @override
  _$EmailInvalidCopyWith<_EmailInvalid> get copyWith =>
      __$EmailInvalidCopyWithImpl<_EmailInvalid>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) pure,
    required TResult Function(String email) dirty,
    required TResult Function(String email) invalid,
  }) {
    return invalid(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? pure,
    TResult Function(String email)? dirty,
    TResult Function(String email)? invalid,
  }) {
    return invalid?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? pure,
    TResult Function(String email)? dirty,
    TResult Function(String email)? invalid,
    required TResult orElse(),
  }) {
    if (invalid != null) {
      return invalid(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailPure value) pure,
    required TResult Function(_EmailDirty value) dirty,
    required TResult Function(_EmailInvalid value) invalid,
  }) {
    return invalid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailPure value)? pure,
    TResult Function(_EmailDirty value)? dirty,
    TResult Function(_EmailInvalid value)? invalid,
  }) {
    return invalid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailPure value)? pure,
    TResult Function(_EmailDirty value)? dirty,
    TResult Function(_EmailInvalid value)? invalid,
    required TResult orElse(),
  }) {
    if (invalid != null) {
      return invalid(this);
    }
    return orElse();
  }
}

abstract class _EmailInvalid extends EmailInput {
  const factory _EmailInvalid({required String email}) = _$_EmailInvalid;
  const _EmailInvalid._() : super._();

  @override
  String get email;
  @override
  @JsonKey(ignore: true)
  _$EmailInvalidCopyWith<_EmailInvalid> get copyWith =>
      throw _privateConstructorUsedError;
}
