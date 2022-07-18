// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'octo_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$OctoUserTearOff {
  const _$OctoUserTearOff();

  _OctoUser call(
      {required String uid,
      String? email,
      String? photoURL,
      String? userName}) {
    return _OctoUser(
      uid: uid,
      email: email,
      photoURL: photoURL,
      userName: userName,
    );
  }

  _EmptyOctoUser empty(
      {String uid = '', String? email, String? photoURL, String? userName}) {
    return _EmptyOctoUser(
      uid: uid,
      email: email,
      photoURL: photoURL,
      userName: userName,
    );
  }
}

/// @nodoc
const $OctoUser = _$OctoUserTearOff();

/// @nodoc
mixin _$OctoUser {
  String get uid => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get photoURL => throw _privateConstructorUsedError;
  String? get userName => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String uid, String? email, String? photoURL, String? userName)
        $default, {
    required TResult Function(
            String uid, String? email, String? photoURL, String? userName)
        empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(
            String uid, String? email, String? photoURL, String? userName)?
        $default, {
    TResult Function(
            String uid, String? email, String? photoURL, String? userName)?
        empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String uid, String? email, String? photoURL, String? userName)?
        $default, {
    TResult Function(
            String uid, String? email, String? photoURL, String? userName)?
        empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_OctoUser value) $default, {
    required TResult Function(_EmptyOctoUser value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_OctoUser value)? $default, {
    TResult Function(_EmptyOctoUser value)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_OctoUser value)? $default, {
    TResult Function(_EmptyOctoUser value)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OctoUserCopyWith<OctoUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OctoUserCopyWith<$Res> {
  factory $OctoUserCopyWith(OctoUser value, $Res Function(OctoUser) then) =
      _$OctoUserCopyWithImpl<$Res>;
  $Res call({String uid, String? email, String? photoURL, String? userName});
}

/// @nodoc
class _$OctoUserCopyWithImpl<$Res> implements $OctoUserCopyWith<$Res> {
  _$OctoUserCopyWithImpl(this._value, this._then);

  final OctoUser _value;
  // ignore: unused_field
  final $Res Function(OctoUser) _then;

  @override
  $Res call({
    Object? uid = freezed,
    Object? email = freezed,
    Object? photoURL = freezed,
    Object? userName = freezed,
  }) {
    return _then(_value.copyWith(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      photoURL: photoURL == freezed
          ? _value.photoURL
          : photoURL // ignore: cast_nullable_to_non_nullable
              as String?,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$OctoUserCopyWith<$Res> implements $OctoUserCopyWith<$Res> {
  factory _$OctoUserCopyWith(_OctoUser value, $Res Function(_OctoUser) then) =
      __$OctoUserCopyWithImpl<$Res>;
  @override
  $Res call({String uid, String? email, String? photoURL, String? userName});
}

/// @nodoc
class __$OctoUserCopyWithImpl<$Res> extends _$OctoUserCopyWithImpl<$Res>
    implements _$OctoUserCopyWith<$Res> {
  __$OctoUserCopyWithImpl(_OctoUser _value, $Res Function(_OctoUser) _then)
      : super(_value, (v) => _then(v as _OctoUser));

  @override
  _OctoUser get _value => super._value as _OctoUser;

  @override
  $Res call({
    Object? uid = freezed,
    Object? email = freezed,
    Object? photoURL = freezed,
    Object? userName = freezed,
  }) {
    return _then(_OctoUser(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      photoURL: photoURL == freezed
          ? _value.photoURL
          : photoURL // ignore: cast_nullable_to_non_nullable
              as String?,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_OctoUser implements _OctoUser {
  const _$_OctoUser(
      {required this.uid, this.email, this.photoURL, this.userName});

  @override
  final String uid;
  @override
  final String? email;
  @override
  final String? photoURL;
  @override
  final String? userName;

  @override
  String toString() {
    return 'OctoUser(uid: $uid, email: $email, photoURL: $photoURL, userName: $userName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OctoUser &&
            const DeepCollectionEquality().equals(other.uid, uid) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.photoURL, photoURL) &&
            const DeepCollectionEquality().equals(other.userName, userName));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(uid),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(photoURL),
      const DeepCollectionEquality().hash(userName));

  @JsonKey(ignore: true)
  @override
  _$OctoUserCopyWith<_OctoUser> get copyWith =>
      __$OctoUserCopyWithImpl<_OctoUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String uid, String? email, String? photoURL, String? userName)
        $default, {
    required TResult Function(
            String uid, String? email, String? photoURL, String? userName)
        empty,
  }) {
    return $default(uid, email, photoURL, userName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(
            String uid, String? email, String? photoURL, String? userName)?
        $default, {
    TResult Function(
            String uid, String? email, String? photoURL, String? userName)?
        empty,
  }) {
    return $default?.call(uid, email, photoURL, userName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String uid, String? email, String? photoURL, String? userName)?
        $default, {
    TResult Function(
            String uid, String? email, String? photoURL, String? userName)?
        empty,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(uid, email, photoURL, userName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_OctoUser value) $default, {
    required TResult Function(_EmptyOctoUser value) empty,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_OctoUser value)? $default, {
    TResult Function(_EmptyOctoUser value)? empty,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_OctoUser value)? $default, {
    TResult Function(_EmptyOctoUser value)? empty,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _OctoUser implements OctoUser {
  const factory _OctoUser(
      {required String uid,
      String? email,
      String? photoURL,
      String? userName}) = _$_OctoUser;

  @override
  String get uid;
  @override
  String? get email;
  @override
  String? get photoURL;
  @override
  String? get userName;
  @override
  @JsonKey(ignore: true)
  _$OctoUserCopyWith<_OctoUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$EmptyOctoUserCopyWith<$Res>
    implements $OctoUserCopyWith<$Res> {
  factory _$EmptyOctoUserCopyWith(
          _EmptyOctoUser value, $Res Function(_EmptyOctoUser) then) =
      __$EmptyOctoUserCopyWithImpl<$Res>;
  @override
  $Res call({String uid, String? email, String? photoURL, String? userName});
}

/// @nodoc
class __$EmptyOctoUserCopyWithImpl<$Res> extends _$OctoUserCopyWithImpl<$Res>
    implements _$EmptyOctoUserCopyWith<$Res> {
  __$EmptyOctoUserCopyWithImpl(
      _EmptyOctoUser _value, $Res Function(_EmptyOctoUser) _then)
      : super(_value, (v) => _then(v as _EmptyOctoUser));

  @override
  _EmptyOctoUser get _value => super._value as _EmptyOctoUser;

  @override
  $Res call({
    Object? uid = freezed,
    Object? email = freezed,
    Object? photoURL = freezed,
    Object? userName = freezed,
  }) {
    return _then(_EmptyOctoUser(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      photoURL: photoURL == freezed
          ? _value.photoURL
          : photoURL // ignore: cast_nullable_to_non_nullable
              as String?,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_EmptyOctoUser implements _EmptyOctoUser {
  const _$_EmptyOctoUser(
      {this.uid = '', this.email, this.photoURL, this.userName});

  @JsonKey()
  @override
  final String uid;
  @override
  final String? email;
  @override
  final String? photoURL;
  @override
  final String? userName;

  @override
  String toString() {
    return 'OctoUser.empty(uid: $uid, email: $email, photoURL: $photoURL, userName: $userName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EmptyOctoUser &&
            const DeepCollectionEquality().equals(other.uid, uid) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.photoURL, photoURL) &&
            const DeepCollectionEquality().equals(other.userName, userName));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(uid),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(photoURL),
      const DeepCollectionEquality().hash(userName));

  @JsonKey(ignore: true)
  @override
  _$EmptyOctoUserCopyWith<_EmptyOctoUser> get copyWith =>
      __$EmptyOctoUserCopyWithImpl<_EmptyOctoUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String uid, String? email, String? photoURL, String? userName)
        $default, {
    required TResult Function(
            String uid, String? email, String? photoURL, String? userName)
        empty,
  }) {
    return empty(uid, email, photoURL, userName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(
            String uid, String? email, String? photoURL, String? userName)?
        $default, {
    TResult Function(
            String uid, String? email, String? photoURL, String? userName)?
        empty,
  }) {
    return empty?.call(uid, email, photoURL, userName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String uid, String? email, String? photoURL, String? userName)?
        $default, {
    TResult Function(
            String uid, String? email, String? photoURL, String? userName)?
        empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(uid, email, photoURL, userName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_OctoUser value) $default, {
    required TResult Function(_EmptyOctoUser value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_OctoUser value)? $default, {
    TResult Function(_EmptyOctoUser value)? empty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_OctoUser value)? $default, {
    TResult Function(_EmptyOctoUser value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _EmptyOctoUser implements OctoUser {
  const factory _EmptyOctoUser(
      {String uid,
      String? email,
      String? photoURL,
      String? userName}) = _$_EmptyOctoUser;

  @override
  String get uid;
  @override
  String? get email;
  @override
  String? get photoURL;
  @override
  String? get userName;
  @override
  @JsonKey(ignore: true)
  _$EmptyOctoUserCopyWith<_EmptyOctoUser> get copyWith =>
      throw _privateConstructorUsedError;
}
