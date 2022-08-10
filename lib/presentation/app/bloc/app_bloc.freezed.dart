// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'app_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AppEventTearOff {
  const _$AppEventTearOff();

  _AppUserChanged appUserChanged({required OctoUser user}) {
    return _AppUserChanged(
      user: user,
    );
  }

  _AppLogoutRequested appLogoutRequested() {
    return const _AppLogoutRequested();
  }

  _AppDeleteAccount appDeleteAccount() {
    return const _AppDeleteAccount();
  }
}

/// @nodoc
const $AppEvent = _$AppEventTearOff();

/// @nodoc
mixin _$AppEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OctoUser user) appUserChanged,
    required TResult Function() appLogoutRequested,
    required TResult Function() appDeleteAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(OctoUser user)? appUserChanged,
    TResult Function()? appLogoutRequested,
    TResult Function()? appDeleteAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OctoUser user)? appUserChanged,
    TResult Function()? appLogoutRequested,
    TResult Function()? appDeleteAccount,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppUserChanged value) appUserChanged,
    required TResult Function(_AppLogoutRequested value) appLogoutRequested,
    required TResult Function(_AppDeleteAccount value) appDeleteAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AppUserChanged value)? appUserChanged,
    TResult Function(_AppLogoutRequested value)? appLogoutRequested,
    TResult Function(_AppDeleteAccount value)? appDeleteAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppUserChanged value)? appUserChanged,
    TResult Function(_AppLogoutRequested value)? appLogoutRequested,
    TResult Function(_AppDeleteAccount value)? appDeleteAccount,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppEventCopyWith<$Res> {
  factory $AppEventCopyWith(AppEvent value, $Res Function(AppEvent) then) =
      _$AppEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppEventCopyWithImpl<$Res> implements $AppEventCopyWith<$Res> {
  _$AppEventCopyWithImpl(this._value, this._then);

  final AppEvent _value;
  // ignore: unused_field
  final $Res Function(AppEvent) _then;
}

/// @nodoc
abstract class _$AppUserChangedCopyWith<$Res> {
  factory _$AppUserChangedCopyWith(
          _AppUserChanged value, $Res Function(_AppUserChanged) then) =
      __$AppUserChangedCopyWithImpl<$Res>;
  $Res call({OctoUser user});

  $OctoUserCopyWith<$Res> get user;
}

/// @nodoc
class __$AppUserChangedCopyWithImpl<$Res> extends _$AppEventCopyWithImpl<$Res>
    implements _$AppUserChangedCopyWith<$Res> {
  __$AppUserChangedCopyWithImpl(
      _AppUserChanged _value, $Res Function(_AppUserChanged) _then)
      : super(_value, (v) => _then(v as _AppUserChanged));

  @override
  _AppUserChanged get _value => super._value as _AppUserChanged;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_AppUserChanged(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as OctoUser,
    ));
  }

  @override
  $OctoUserCopyWith<$Res> get user {
    return $OctoUserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$_AppUserChanged
    with DiagnosticableTreeMixin
    implements _AppUserChanged {
  const _$_AppUserChanged({required this.user});

  @override
  final OctoUser user;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppEvent.appUserChanged(user: $user)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AppEvent.appUserChanged'))
      ..add(DiagnosticsProperty('user', user));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AppUserChanged &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$AppUserChangedCopyWith<_AppUserChanged> get copyWith =>
      __$AppUserChangedCopyWithImpl<_AppUserChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OctoUser user) appUserChanged,
    required TResult Function() appLogoutRequested,
    required TResult Function() appDeleteAccount,
  }) {
    return appUserChanged(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(OctoUser user)? appUserChanged,
    TResult Function()? appLogoutRequested,
    TResult Function()? appDeleteAccount,
  }) {
    return appUserChanged?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OctoUser user)? appUserChanged,
    TResult Function()? appLogoutRequested,
    TResult Function()? appDeleteAccount,
    required TResult orElse(),
  }) {
    if (appUserChanged != null) {
      return appUserChanged(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppUserChanged value) appUserChanged,
    required TResult Function(_AppLogoutRequested value) appLogoutRequested,
    required TResult Function(_AppDeleteAccount value) appDeleteAccount,
  }) {
    return appUserChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AppUserChanged value)? appUserChanged,
    TResult Function(_AppLogoutRequested value)? appLogoutRequested,
    TResult Function(_AppDeleteAccount value)? appDeleteAccount,
  }) {
    return appUserChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppUserChanged value)? appUserChanged,
    TResult Function(_AppLogoutRequested value)? appLogoutRequested,
    TResult Function(_AppDeleteAccount value)? appDeleteAccount,
    required TResult orElse(),
  }) {
    if (appUserChanged != null) {
      return appUserChanged(this);
    }
    return orElse();
  }
}

abstract class _AppUserChanged implements AppEvent {
  const factory _AppUserChanged({required OctoUser user}) = _$_AppUserChanged;

  OctoUser get user;
  @JsonKey(ignore: true)
  _$AppUserChangedCopyWith<_AppUserChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AppLogoutRequestedCopyWith<$Res> {
  factory _$AppLogoutRequestedCopyWith(
          _AppLogoutRequested value, $Res Function(_AppLogoutRequested) then) =
      __$AppLogoutRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class __$AppLogoutRequestedCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res>
    implements _$AppLogoutRequestedCopyWith<$Res> {
  __$AppLogoutRequestedCopyWithImpl(
      _AppLogoutRequested _value, $Res Function(_AppLogoutRequested) _then)
      : super(_value, (v) => _then(v as _AppLogoutRequested));

  @override
  _AppLogoutRequested get _value => super._value as _AppLogoutRequested;
}

/// @nodoc

class _$_AppLogoutRequested
    with DiagnosticableTreeMixin
    implements _AppLogoutRequested {
  const _$_AppLogoutRequested();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppEvent.appLogoutRequested()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AppEvent.appLogoutRequested'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _AppLogoutRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OctoUser user) appUserChanged,
    required TResult Function() appLogoutRequested,
    required TResult Function() appDeleteAccount,
  }) {
    return appLogoutRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(OctoUser user)? appUserChanged,
    TResult Function()? appLogoutRequested,
    TResult Function()? appDeleteAccount,
  }) {
    return appLogoutRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OctoUser user)? appUserChanged,
    TResult Function()? appLogoutRequested,
    TResult Function()? appDeleteAccount,
    required TResult orElse(),
  }) {
    if (appLogoutRequested != null) {
      return appLogoutRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppUserChanged value) appUserChanged,
    required TResult Function(_AppLogoutRequested value) appLogoutRequested,
    required TResult Function(_AppDeleteAccount value) appDeleteAccount,
  }) {
    return appLogoutRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AppUserChanged value)? appUserChanged,
    TResult Function(_AppLogoutRequested value)? appLogoutRequested,
    TResult Function(_AppDeleteAccount value)? appDeleteAccount,
  }) {
    return appLogoutRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppUserChanged value)? appUserChanged,
    TResult Function(_AppLogoutRequested value)? appLogoutRequested,
    TResult Function(_AppDeleteAccount value)? appDeleteAccount,
    required TResult orElse(),
  }) {
    if (appLogoutRequested != null) {
      return appLogoutRequested(this);
    }
    return orElse();
  }
}

abstract class _AppLogoutRequested implements AppEvent {
  const factory _AppLogoutRequested() = _$_AppLogoutRequested;
}

/// @nodoc
abstract class _$AppDeleteAccountCopyWith<$Res> {
  factory _$AppDeleteAccountCopyWith(
          _AppDeleteAccount value, $Res Function(_AppDeleteAccount) then) =
      __$AppDeleteAccountCopyWithImpl<$Res>;
}

/// @nodoc
class __$AppDeleteAccountCopyWithImpl<$Res> extends _$AppEventCopyWithImpl<$Res>
    implements _$AppDeleteAccountCopyWith<$Res> {
  __$AppDeleteAccountCopyWithImpl(
      _AppDeleteAccount _value, $Res Function(_AppDeleteAccount) _then)
      : super(_value, (v) => _then(v as _AppDeleteAccount));

  @override
  _AppDeleteAccount get _value => super._value as _AppDeleteAccount;
}

/// @nodoc

class _$_AppDeleteAccount
    with DiagnosticableTreeMixin
    implements _AppDeleteAccount {
  const _$_AppDeleteAccount();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppEvent.appDeleteAccount()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AppEvent.appDeleteAccount'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _AppDeleteAccount);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OctoUser user) appUserChanged,
    required TResult Function() appLogoutRequested,
    required TResult Function() appDeleteAccount,
  }) {
    return appDeleteAccount();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(OctoUser user)? appUserChanged,
    TResult Function()? appLogoutRequested,
    TResult Function()? appDeleteAccount,
  }) {
    return appDeleteAccount?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OctoUser user)? appUserChanged,
    TResult Function()? appLogoutRequested,
    TResult Function()? appDeleteAccount,
    required TResult orElse(),
  }) {
    if (appDeleteAccount != null) {
      return appDeleteAccount();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppUserChanged value) appUserChanged,
    required TResult Function(_AppLogoutRequested value) appLogoutRequested,
    required TResult Function(_AppDeleteAccount value) appDeleteAccount,
  }) {
    return appDeleteAccount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AppUserChanged value)? appUserChanged,
    TResult Function(_AppLogoutRequested value)? appLogoutRequested,
    TResult Function(_AppDeleteAccount value)? appDeleteAccount,
  }) {
    return appDeleteAccount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppUserChanged value)? appUserChanged,
    TResult Function(_AppLogoutRequested value)? appLogoutRequested,
    TResult Function(_AppDeleteAccount value)? appDeleteAccount,
    required TResult orElse(),
  }) {
    if (appDeleteAccount != null) {
      return appDeleteAccount(this);
    }
    return orElse();
  }
}

abstract class _AppDeleteAccount implements AppEvent {
  const factory _AppDeleteAccount() = _$_AppDeleteAccount;
}

/// @nodoc
class _$AppStateTearOff {
  const _$AppStateTearOff();

  _Authenticated authenticated(
      {required OctoUser user, AppStatus status = AppStatus.authenticated}) {
    return _Authenticated(
      user: user,
      status: status,
    );
  }

  _Unauthenticated unauthenticated(
      {OctoUser user = const OctoUser.empty(),
      AppStatus status = AppStatus.unauthenticated}) {
    return _Unauthenticated(
      user: user,
      status: status,
    );
  }
}

/// @nodoc
const $AppState = _$AppStateTearOff();

/// @nodoc
mixin _$AppState {
  OctoUser get user => throw _privateConstructorUsedError;
  AppStatus get status => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OctoUser user, AppStatus status) authenticated,
    required TResult Function(OctoUser user, AppStatus status) unauthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(OctoUser user, AppStatus status)? authenticated,
    TResult Function(OctoUser user, AppStatus status)? unauthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OctoUser user, AppStatus status)? authenticated,
    TResult Function(OctoUser user, AppStatus status)? unauthenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Unauthenticated value) unauthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppStateCopyWith<AppState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res>;
  $Res call({OctoUser user, AppStatus status});

  $OctoUserCopyWith<$Res> get user;
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res> implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  final AppState _value;
  // ignore: unused_field
  final $Res Function(AppState) _then;

  @override
  $Res call({
    Object? user = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as OctoUser,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AppStatus,
    ));
  }

  @override
  $OctoUserCopyWith<$Res> get user {
    return $OctoUserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$AuthenticatedCopyWith<$Res>
    implements $AppStateCopyWith<$Res> {
  factory _$AuthenticatedCopyWith(
          _Authenticated value, $Res Function(_Authenticated) then) =
      __$AuthenticatedCopyWithImpl<$Res>;
  @override
  $Res call({OctoUser user, AppStatus status});

  @override
  $OctoUserCopyWith<$Res> get user;
}

/// @nodoc
class __$AuthenticatedCopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res>
    implements _$AuthenticatedCopyWith<$Res> {
  __$AuthenticatedCopyWithImpl(
      _Authenticated _value, $Res Function(_Authenticated) _then)
      : super(_value, (v) => _then(v as _Authenticated));

  @override
  _Authenticated get _value => super._value as _Authenticated;

  @override
  $Res call({
    Object? user = freezed,
    Object? status = freezed,
  }) {
    return _then(_Authenticated(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as OctoUser,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AppStatus,
    ));
  }
}

/// @nodoc

class _$_Authenticated with DiagnosticableTreeMixin implements _Authenticated {
  const _$_Authenticated(
      {required this.user, this.status = AppStatus.authenticated});

  @override
  final OctoUser user;
  @JsonKey()
  @override
  final AppStatus status;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppState.authenticated(user: $user, status: $status)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AppState.authenticated'))
      ..add(DiagnosticsProperty('user', user))
      ..add(DiagnosticsProperty('status', status));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Authenticated &&
            const DeepCollectionEquality().equals(other.user, user) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(user),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$AuthenticatedCopyWith<_Authenticated> get copyWith =>
      __$AuthenticatedCopyWithImpl<_Authenticated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OctoUser user, AppStatus status) authenticated,
    required TResult Function(OctoUser user, AppStatus status) unauthenticated,
  }) {
    return authenticated(user, status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(OctoUser user, AppStatus status)? authenticated,
    TResult Function(OctoUser user, AppStatus status)? unauthenticated,
  }) {
    return authenticated?.call(user, status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OctoUser user, AppStatus status)? authenticated,
    TResult Function(OctoUser user, AppStatus status)? unauthenticated,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(user, status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Unauthenticated value) unauthenticated,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class _Authenticated implements AppState {
  const factory _Authenticated({required OctoUser user, AppStatus status}) =
      _$_Authenticated;

  @override
  OctoUser get user;
  @override
  AppStatus get status;
  @override
  @JsonKey(ignore: true)
  _$AuthenticatedCopyWith<_Authenticated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UnauthenticatedCopyWith<$Res>
    implements $AppStateCopyWith<$Res> {
  factory _$UnauthenticatedCopyWith(
          _Unauthenticated value, $Res Function(_Unauthenticated) then) =
      __$UnauthenticatedCopyWithImpl<$Res>;
  @override
  $Res call({OctoUser user, AppStatus status});

  @override
  $OctoUserCopyWith<$Res> get user;
}

/// @nodoc
class __$UnauthenticatedCopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res>
    implements _$UnauthenticatedCopyWith<$Res> {
  __$UnauthenticatedCopyWithImpl(
      _Unauthenticated _value, $Res Function(_Unauthenticated) _then)
      : super(_value, (v) => _then(v as _Unauthenticated));

  @override
  _Unauthenticated get _value => super._value as _Unauthenticated;

  @override
  $Res call({
    Object? user = freezed,
    Object? status = freezed,
  }) {
    return _then(_Unauthenticated(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as OctoUser,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AppStatus,
    ));
  }
}

/// @nodoc

class _$_Unauthenticated
    with DiagnosticableTreeMixin
    implements _Unauthenticated {
  const _$_Unauthenticated(
      {this.user = const OctoUser.empty(),
      this.status = AppStatus.unauthenticated});

  @JsonKey()
  @override
  final OctoUser user;
  @JsonKey()
  @override
  final AppStatus status;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppState.unauthenticated(user: $user, status: $status)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AppState.unauthenticated'))
      ..add(DiagnosticsProperty('user', user))
      ..add(DiagnosticsProperty('status', status));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Unauthenticated &&
            const DeepCollectionEquality().equals(other.user, user) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(user),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$UnauthenticatedCopyWith<_Unauthenticated> get copyWith =>
      __$UnauthenticatedCopyWithImpl<_Unauthenticated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OctoUser user, AppStatus status) authenticated,
    required TResult Function(OctoUser user, AppStatus status) unauthenticated,
  }) {
    return unauthenticated(user, status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(OctoUser user, AppStatus status)? authenticated,
    TResult Function(OctoUser user, AppStatus status)? unauthenticated,
  }) {
    return unauthenticated?.call(user, status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OctoUser user, AppStatus status)? authenticated,
    TResult Function(OctoUser user, AppStatus status)? unauthenticated,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(user, status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Unauthenticated value) unauthenticated,
  }) {
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
  }) {
    return unauthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class _Unauthenticated implements AppState {
  const factory _Unauthenticated({OctoUser user, AppStatus status}) =
      _$_Unauthenticated;

  @override
  OctoUser get user;
  @override
  AppStatus get status;
  @override
  @JsonKey(ignore: true)
  _$UnauthenticatedCopyWith<_Unauthenticated> get copyWith =>
      throw _privateConstructorUsedError;
}
