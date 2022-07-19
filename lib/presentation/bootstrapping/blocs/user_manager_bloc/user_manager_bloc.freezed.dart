// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_manager_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserManagerEventTearOff {
  const _$UserManagerEventTearOff();

  _FetchStarted fetchStarted() {
    return const _FetchStarted();
  }
}

/// @nodoc
const $UserManagerEvent = _$UserManagerEventTearOff();

/// @nodoc
mixin _$UserManagerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchStarted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchStarted value) fetchStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchStarted value)? fetchStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchStarted value)? fetchStarted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserManagerEventCopyWith<$Res> {
  factory $UserManagerEventCopyWith(
          UserManagerEvent value, $Res Function(UserManagerEvent) then) =
      _$UserManagerEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserManagerEventCopyWithImpl<$Res>
    implements $UserManagerEventCopyWith<$Res> {
  _$UserManagerEventCopyWithImpl(this._value, this._then);

  final UserManagerEvent _value;
  // ignore: unused_field
  final $Res Function(UserManagerEvent) _then;
}

/// @nodoc
abstract class _$FetchStartedCopyWith<$Res> {
  factory _$FetchStartedCopyWith(
          _FetchStarted value, $Res Function(_FetchStarted) then) =
      __$FetchStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$FetchStartedCopyWithImpl<$Res>
    extends _$UserManagerEventCopyWithImpl<$Res>
    implements _$FetchStartedCopyWith<$Res> {
  __$FetchStartedCopyWithImpl(
      _FetchStarted _value, $Res Function(_FetchStarted) _then)
      : super(_value, (v) => _then(v as _FetchStarted));

  @override
  _FetchStarted get _value => super._value as _FetchStarted;
}

/// @nodoc

class _$_FetchStarted implements _FetchStarted {
  const _$_FetchStarted();

  @override
  String toString() {
    return 'UserManagerEvent.fetchStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _FetchStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchStarted,
  }) {
    return fetchStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchStarted,
  }) {
    return fetchStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchStarted,
    required TResult orElse(),
  }) {
    if (fetchStarted != null) {
      return fetchStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchStarted value) fetchStarted,
  }) {
    return fetchStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchStarted value)? fetchStarted,
  }) {
    return fetchStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchStarted value)? fetchStarted,
    required TResult orElse(),
  }) {
    if (fetchStarted != null) {
      return fetchStarted(this);
    }
    return orElse();
  }
}

abstract class _FetchStarted implements UserManagerEvent {
  const factory _FetchStarted() = _$_FetchStarted;
}

/// @nodoc
class _$UserManagerStateTearOff {
  const _$UserManagerStateTearOff();

  _UserManagerState call(
      {UserManagerStatus status = const UserManagerStatus.initial(),
      int runningProcessCounter = 0,
      String? message}) {
    return _UserManagerState(
      status: status,
      runningProcessCounter: runningProcessCounter,
      message: message,
    );
  }
}

/// @nodoc
const $UserManagerState = _$UserManagerStateTearOff();

/// @nodoc
mixin _$UserManagerState {
  UserManagerStatus get status => throw _privateConstructorUsedError;
  int get runningProcessCounter => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserManagerStateCopyWith<UserManagerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserManagerStateCopyWith<$Res> {
  factory $UserManagerStateCopyWith(
          UserManagerState value, $Res Function(UserManagerState) then) =
      _$UserManagerStateCopyWithImpl<$Res>;
  $Res call(
      {UserManagerStatus status, int runningProcessCounter, String? message});

  $UserManagerStatusCopyWith<$Res> get status;
}

/// @nodoc
class _$UserManagerStateCopyWithImpl<$Res>
    implements $UserManagerStateCopyWith<$Res> {
  _$UserManagerStateCopyWithImpl(this._value, this._then);

  final UserManagerState _value;
  // ignore: unused_field
  final $Res Function(UserManagerState) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? runningProcessCounter = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as UserManagerStatus,
      runningProcessCounter: runningProcessCounter == freezed
          ? _value.runningProcessCounter
          : runningProcessCounter // ignore: cast_nullable_to_non_nullable
              as int,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $UserManagerStatusCopyWith<$Res> get status {
    return $UserManagerStatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value));
    });
  }
}

/// @nodoc
abstract class _$UserManagerStateCopyWith<$Res>
    implements $UserManagerStateCopyWith<$Res> {
  factory _$UserManagerStateCopyWith(
          _UserManagerState value, $Res Function(_UserManagerState) then) =
      __$UserManagerStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {UserManagerStatus status, int runningProcessCounter, String? message});

  @override
  $UserManagerStatusCopyWith<$Res> get status;
}

/// @nodoc
class __$UserManagerStateCopyWithImpl<$Res>
    extends _$UserManagerStateCopyWithImpl<$Res>
    implements _$UserManagerStateCopyWith<$Res> {
  __$UserManagerStateCopyWithImpl(
      _UserManagerState _value, $Res Function(_UserManagerState) _then)
      : super(_value, (v) => _then(v as _UserManagerState));

  @override
  _UserManagerState get _value => super._value as _UserManagerState;

  @override
  $Res call({
    Object? status = freezed,
    Object? runningProcessCounter = freezed,
    Object? message = freezed,
  }) {
    return _then(_UserManagerState(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as UserManagerStatus,
      runningProcessCounter: runningProcessCounter == freezed
          ? _value.runningProcessCounter
          : runningProcessCounter // ignore: cast_nullable_to_non_nullable
              as int,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_UserManagerState implements _UserManagerState {
  const _$_UserManagerState(
      {this.status = const UserManagerStatus.initial(),
      this.runningProcessCounter = 0,
      this.message});

  @JsonKey()
  @override
  final UserManagerStatus status;
  @JsonKey()
  @override
  final int runningProcessCounter;
  @override
  final String? message;

  @override
  String toString() {
    return 'UserManagerState(status: $status, runningProcessCounter: $runningProcessCounter, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserManagerState &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other.runningProcessCounter, runningProcessCounter) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(runningProcessCounter),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$UserManagerStateCopyWith<_UserManagerState> get copyWith =>
      __$UserManagerStateCopyWithImpl<_UserManagerState>(this, _$identity);
}

abstract class _UserManagerState implements UserManagerState {
  const factory _UserManagerState(
      {UserManagerStatus status,
      int runningProcessCounter,
      String? message}) = _$_UserManagerState;

  @override
  UserManagerStatus get status;
  @override
  int get runningProcessCounter;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$UserManagerStateCopyWith<_UserManagerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$UserManagerStatusTearOff {
  const _$UserManagerStatusTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _FetchInProgress fetchInProgress() {
    return const _FetchInProgress();
  }

  _FetchSuccess fechtSuccess() {
    return const _FetchSuccess();
  }

  _FetchError fetchError({String? message}) {
    return _FetchError(
      message: message,
    );
  }
}

/// @nodoc
const $UserManagerStatus = _$UserManagerStatusTearOff();

/// @nodoc
mixin _$UserManagerStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchInProgress,
    required TResult Function() fechtSuccess,
    required TResult Function(String? message) fetchError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchInProgress,
    TResult Function()? fechtSuccess,
    TResult Function(String? message)? fetchError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchInProgress,
    TResult Function()? fechtSuccess,
    TResult Function(String? message)? fetchError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchInProgress value) fetchInProgress,
    required TResult Function(_FetchSuccess value) fechtSuccess,
    required TResult Function(_FetchError value) fetchError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchInProgress value)? fetchInProgress,
    TResult Function(_FetchSuccess value)? fechtSuccess,
    TResult Function(_FetchError value)? fetchError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchInProgress value)? fetchInProgress,
    TResult Function(_FetchSuccess value)? fechtSuccess,
    TResult Function(_FetchError value)? fetchError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserManagerStatusCopyWith<$Res> {
  factory $UserManagerStatusCopyWith(
          UserManagerStatus value, $Res Function(UserManagerStatus) then) =
      _$UserManagerStatusCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserManagerStatusCopyWithImpl<$Res>
    implements $UserManagerStatusCopyWith<$Res> {
  _$UserManagerStatusCopyWithImpl(this._value, this._then);

  final UserManagerStatus _value;
  // ignore: unused_field
  final $Res Function(UserManagerStatus) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$UserManagerStatusCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'UserManagerStatus.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchInProgress,
    required TResult Function() fechtSuccess,
    required TResult Function(String? message) fetchError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchInProgress,
    TResult Function()? fechtSuccess,
    TResult Function(String? message)? fetchError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchInProgress,
    TResult Function()? fechtSuccess,
    TResult Function(String? message)? fetchError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchInProgress value) fetchInProgress,
    required TResult Function(_FetchSuccess value) fechtSuccess,
    required TResult Function(_FetchError value) fetchError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchInProgress value)? fetchInProgress,
    TResult Function(_FetchSuccess value)? fechtSuccess,
    TResult Function(_FetchError value)? fetchError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchInProgress value)? fetchInProgress,
    TResult Function(_FetchSuccess value)? fechtSuccess,
    TResult Function(_FetchError value)? fetchError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements UserManagerStatus {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$FetchInProgressCopyWith<$Res> {
  factory _$FetchInProgressCopyWith(
          _FetchInProgress value, $Res Function(_FetchInProgress) then) =
      __$FetchInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$FetchInProgressCopyWithImpl<$Res>
    extends _$UserManagerStatusCopyWithImpl<$Res>
    implements _$FetchInProgressCopyWith<$Res> {
  __$FetchInProgressCopyWithImpl(
      _FetchInProgress _value, $Res Function(_FetchInProgress) _then)
      : super(_value, (v) => _then(v as _FetchInProgress));

  @override
  _FetchInProgress get _value => super._value as _FetchInProgress;
}

/// @nodoc

class _$_FetchInProgress implements _FetchInProgress {
  const _$_FetchInProgress();

  @override
  String toString() {
    return 'UserManagerStatus.fetchInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _FetchInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchInProgress,
    required TResult Function() fechtSuccess,
    required TResult Function(String? message) fetchError,
  }) {
    return fetchInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchInProgress,
    TResult Function()? fechtSuccess,
    TResult Function(String? message)? fetchError,
  }) {
    return fetchInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchInProgress,
    TResult Function()? fechtSuccess,
    TResult Function(String? message)? fetchError,
    required TResult orElse(),
  }) {
    if (fetchInProgress != null) {
      return fetchInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchInProgress value) fetchInProgress,
    required TResult Function(_FetchSuccess value) fechtSuccess,
    required TResult Function(_FetchError value) fetchError,
  }) {
    return fetchInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchInProgress value)? fetchInProgress,
    TResult Function(_FetchSuccess value)? fechtSuccess,
    TResult Function(_FetchError value)? fetchError,
  }) {
    return fetchInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchInProgress value)? fetchInProgress,
    TResult Function(_FetchSuccess value)? fechtSuccess,
    TResult Function(_FetchError value)? fetchError,
    required TResult orElse(),
  }) {
    if (fetchInProgress != null) {
      return fetchInProgress(this);
    }
    return orElse();
  }
}

abstract class _FetchInProgress implements UserManagerStatus {
  const factory _FetchInProgress() = _$_FetchInProgress;
}

/// @nodoc
abstract class _$FetchSuccessCopyWith<$Res> {
  factory _$FetchSuccessCopyWith(
          _FetchSuccess value, $Res Function(_FetchSuccess) then) =
      __$FetchSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$FetchSuccessCopyWithImpl<$Res>
    extends _$UserManagerStatusCopyWithImpl<$Res>
    implements _$FetchSuccessCopyWith<$Res> {
  __$FetchSuccessCopyWithImpl(
      _FetchSuccess _value, $Res Function(_FetchSuccess) _then)
      : super(_value, (v) => _then(v as _FetchSuccess));

  @override
  _FetchSuccess get _value => super._value as _FetchSuccess;
}

/// @nodoc

class _$_FetchSuccess implements _FetchSuccess {
  const _$_FetchSuccess();

  @override
  String toString() {
    return 'UserManagerStatus.fechtSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _FetchSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchInProgress,
    required TResult Function() fechtSuccess,
    required TResult Function(String? message) fetchError,
  }) {
    return fechtSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchInProgress,
    TResult Function()? fechtSuccess,
    TResult Function(String? message)? fetchError,
  }) {
    return fechtSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchInProgress,
    TResult Function()? fechtSuccess,
    TResult Function(String? message)? fetchError,
    required TResult orElse(),
  }) {
    if (fechtSuccess != null) {
      return fechtSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchInProgress value) fetchInProgress,
    required TResult Function(_FetchSuccess value) fechtSuccess,
    required TResult Function(_FetchError value) fetchError,
  }) {
    return fechtSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchInProgress value)? fetchInProgress,
    TResult Function(_FetchSuccess value)? fechtSuccess,
    TResult Function(_FetchError value)? fetchError,
  }) {
    return fechtSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchInProgress value)? fetchInProgress,
    TResult Function(_FetchSuccess value)? fechtSuccess,
    TResult Function(_FetchError value)? fetchError,
    required TResult orElse(),
  }) {
    if (fechtSuccess != null) {
      return fechtSuccess(this);
    }
    return orElse();
  }
}

abstract class _FetchSuccess implements UserManagerStatus {
  const factory _FetchSuccess() = _$_FetchSuccess;
}

/// @nodoc
abstract class _$FetchErrorCopyWith<$Res> {
  factory _$FetchErrorCopyWith(
          _FetchError value, $Res Function(_FetchError) then) =
      __$FetchErrorCopyWithImpl<$Res>;
  $Res call({String? message});
}

/// @nodoc
class __$FetchErrorCopyWithImpl<$Res>
    extends _$UserManagerStatusCopyWithImpl<$Res>
    implements _$FetchErrorCopyWith<$Res> {
  __$FetchErrorCopyWithImpl(
      _FetchError _value, $Res Function(_FetchError) _then)
      : super(_value, (v) => _then(v as _FetchError));

  @override
  _FetchError get _value => super._value as _FetchError;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_FetchError(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_FetchError implements _FetchError {
  const _$_FetchError({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'UserManagerStatus.fetchError(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FetchError &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$FetchErrorCopyWith<_FetchError> get copyWith =>
      __$FetchErrorCopyWithImpl<_FetchError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchInProgress,
    required TResult Function() fechtSuccess,
    required TResult Function(String? message) fetchError,
  }) {
    return fetchError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchInProgress,
    TResult Function()? fechtSuccess,
    TResult Function(String? message)? fetchError,
  }) {
    return fetchError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchInProgress,
    TResult Function()? fechtSuccess,
    TResult Function(String? message)? fetchError,
    required TResult orElse(),
  }) {
    if (fetchError != null) {
      return fetchError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchInProgress value) fetchInProgress,
    required TResult Function(_FetchSuccess value) fechtSuccess,
    required TResult Function(_FetchError value) fetchError,
  }) {
    return fetchError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchInProgress value)? fetchInProgress,
    TResult Function(_FetchSuccess value)? fechtSuccess,
    TResult Function(_FetchError value)? fetchError,
  }) {
    return fetchError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchInProgress value)? fetchInProgress,
    TResult Function(_FetchSuccess value)? fechtSuccess,
    TResult Function(_FetchError value)? fetchError,
    required TResult orElse(),
  }) {
    if (fetchError != null) {
      return fetchError(this);
    }
    return orElse();
  }
}

abstract class _FetchError implements UserManagerStatus {
  const factory _FetchError({String? message}) = _$_FetchError;

  String? get message;
  @JsonKey(ignore: true)
  _$FetchErrorCopyWith<_FetchError> get copyWith =>
      throw _privateConstructorUsedError;
}
