// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'menu_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MenuEventTearOff {
  const _$MenuEventTearOff();

  _FetchStarted fetchStarted() {
    return const _FetchStarted();
  }

  _AddPage addPage({required NotePage notePage}) {
    return _AddPage(
      notePage: notePage,
    );
  }

  _UpdatePage updatePage({required NotePage notePage}) {
    return _UpdatePage(
      notePage: notePage,
    );
  }

  _RemovePage removePage({required NotePage notePage}) {
    return _RemovePage(
      notePage: notePage,
    );
  }

  _NotePageSelected notePageSelected({required NotePage notePage}) {
    return _NotePageSelected(
      notePage: notePage,
    );
  }

  _CreateEmptyNotePage createEmptyNotePage() {
    return const _CreateEmptyNotePage();
  }
}

/// @nodoc
const $MenuEvent = _$MenuEventTearOff();

/// @nodoc
mixin _$MenuEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchStarted,
    required TResult Function(NotePage notePage) addPage,
    required TResult Function(NotePage notePage) updatePage,
    required TResult Function(NotePage notePage) removePage,
    required TResult Function(NotePage notePage) notePageSelected,
    required TResult Function() createEmptyNotePage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchStarted,
    TResult Function(NotePage notePage)? addPage,
    TResult Function(NotePage notePage)? updatePage,
    TResult Function(NotePage notePage)? removePage,
    TResult Function(NotePage notePage)? notePageSelected,
    TResult Function()? createEmptyNotePage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchStarted,
    TResult Function(NotePage notePage)? addPage,
    TResult Function(NotePage notePage)? updatePage,
    TResult Function(NotePage notePage)? removePage,
    TResult Function(NotePage notePage)? notePageSelected,
    TResult Function()? createEmptyNotePage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchStarted value) fetchStarted,
    required TResult Function(_AddPage value) addPage,
    required TResult Function(_UpdatePage value) updatePage,
    required TResult Function(_RemovePage value) removePage,
    required TResult Function(_NotePageSelected value) notePageSelected,
    required TResult Function(_CreateEmptyNotePage value) createEmptyNotePage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchStarted value)? fetchStarted,
    TResult Function(_AddPage value)? addPage,
    TResult Function(_UpdatePage value)? updatePage,
    TResult Function(_RemovePage value)? removePage,
    TResult Function(_NotePageSelected value)? notePageSelected,
    TResult Function(_CreateEmptyNotePage value)? createEmptyNotePage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchStarted value)? fetchStarted,
    TResult Function(_AddPage value)? addPage,
    TResult Function(_UpdatePage value)? updatePage,
    TResult Function(_RemovePage value)? removePage,
    TResult Function(_NotePageSelected value)? notePageSelected,
    TResult Function(_CreateEmptyNotePage value)? createEmptyNotePage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MenuEventCopyWith<$Res> {
  factory $MenuEventCopyWith(MenuEvent value, $Res Function(MenuEvent) then) =
      _$MenuEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$MenuEventCopyWithImpl<$Res> implements $MenuEventCopyWith<$Res> {
  _$MenuEventCopyWithImpl(this._value, this._then);

  final MenuEvent _value;
  // ignore: unused_field
  final $Res Function(MenuEvent) _then;
}

/// @nodoc
abstract class _$FetchStartedCopyWith<$Res> {
  factory _$FetchStartedCopyWith(
          _FetchStarted value, $Res Function(_FetchStarted) then) =
      __$FetchStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$FetchStartedCopyWithImpl<$Res> extends _$MenuEventCopyWithImpl<$Res>
    implements _$FetchStartedCopyWith<$Res> {
  __$FetchStartedCopyWithImpl(
      _FetchStarted _value, $Res Function(_FetchStarted) _then)
      : super(_value, (v) => _then(v as _FetchStarted));

  @override
  _FetchStarted get _value => super._value as _FetchStarted;
}

/// @nodoc

class _$_FetchStarted with DiagnosticableTreeMixin implements _FetchStarted {
  const _$_FetchStarted();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MenuEvent.fetchStarted()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'MenuEvent.fetchStarted'));
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
    required TResult Function(NotePage notePage) addPage,
    required TResult Function(NotePage notePage) updatePage,
    required TResult Function(NotePage notePage) removePage,
    required TResult Function(NotePage notePage) notePageSelected,
    required TResult Function() createEmptyNotePage,
  }) {
    return fetchStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchStarted,
    TResult Function(NotePage notePage)? addPage,
    TResult Function(NotePage notePage)? updatePage,
    TResult Function(NotePage notePage)? removePage,
    TResult Function(NotePage notePage)? notePageSelected,
    TResult Function()? createEmptyNotePage,
  }) {
    return fetchStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchStarted,
    TResult Function(NotePage notePage)? addPage,
    TResult Function(NotePage notePage)? updatePage,
    TResult Function(NotePage notePage)? removePage,
    TResult Function(NotePage notePage)? notePageSelected,
    TResult Function()? createEmptyNotePage,
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
    required TResult Function(_AddPage value) addPage,
    required TResult Function(_UpdatePage value) updatePage,
    required TResult Function(_RemovePage value) removePage,
    required TResult Function(_NotePageSelected value) notePageSelected,
    required TResult Function(_CreateEmptyNotePage value) createEmptyNotePage,
  }) {
    return fetchStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchStarted value)? fetchStarted,
    TResult Function(_AddPage value)? addPage,
    TResult Function(_UpdatePage value)? updatePage,
    TResult Function(_RemovePage value)? removePage,
    TResult Function(_NotePageSelected value)? notePageSelected,
    TResult Function(_CreateEmptyNotePage value)? createEmptyNotePage,
  }) {
    return fetchStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchStarted value)? fetchStarted,
    TResult Function(_AddPage value)? addPage,
    TResult Function(_UpdatePage value)? updatePage,
    TResult Function(_RemovePage value)? removePage,
    TResult Function(_NotePageSelected value)? notePageSelected,
    TResult Function(_CreateEmptyNotePage value)? createEmptyNotePage,
    required TResult orElse(),
  }) {
    if (fetchStarted != null) {
      return fetchStarted(this);
    }
    return orElse();
  }
}

abstract class _FetchStarted implements MenuEvent {
  const factory _FetchStarted() = _$_FetchStarted;
}

/// @nodoc
abstract class _$AddPageCopyWith<$Res> {
  factory _$AddPageCopyWith(_AddPage value, $Res Function(_AddPage) then) =
      __$AddPageCopyWithImpl<$Res>;
  $Res call({NotePage notePage});

  $NotePageCopyWith<$Res> get notePage;
}

/// @nodoc
class __$AddPageCopyWithImpl<$Res> extends _$MenuEventCopyWithImpl<$Res>
    implements _$AddPageCopyWith<$Res> {
  __$AddPageCopyWithImpl(_AddPage _value, $Res Function(_AddPage) _then)
      : super(_value, (v) => _then(v as _AddPage));

  @override
  _AddPage get _value => super._value as _AddPage;

  @override
  $Res call({
    Object? notePage = freezed,
  }) {
    return _then(_AddPage(
      notePage: notePage == freezed
          ? _value.notePage
          : notePage // ignore: cast_nullable_to_non_nullable
              as NotePage,
    ));
  }

  @override
  $NotePageCopyWith<$Res> get notePage {
    return $NotePageCopyWith<$Res>(_value.notePage, (value) {
      return _then(_value.copyWith(notePage: value));
    });
  }
}

/// @nodoc

class _$_AddPage with DiagnosticableTreeMixin implements _AddPage {
  const _$_AddPage({required this.notePage});

  @override
  final NotePage notePage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MenuEvent.addPage(notePage: $notePage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MenuEvent.addPage'))
      ..add(DiagnosticsProperty('notePage', notePage));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AddPage &&
            const DeepCollectionEquality().equals(other.notePage, notePage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(notePage));

  @JsonKey(ignore: true)
  @override
  _$AddPageCopyWith<_AddPage> get copyWith =>
      __$AddPageCopyWithImpl<_AddPage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchStarted,
    required TResult Function(NotePage notePage) addPage,
    required TResult Function(NotePage notePage) updatePage,
    required TResult Function(NotePage notePage) removePage,
    required TResult Function(NotePage notePage) notePageSelected,
    required TResult Function() createEmptyNotePage,
  }) {
    return addPage(notePage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchStarted,
    TResult Function(NotePage notePage)? addPage,
    TResult Function(NotePage notePage)? updatePage,
    TResult Function(NotePage notePage)? removePage,
    TResult Function(NotePage notePage)? notePageSelected,
    TResult Function()? createEmptyNotePage,
  }) {
    return addPage?.call(notePage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchStarted,
    TResult Function(NotePage notePage)? addPage,
    TResult Function(NotePage notePage)? updatePage,
    TResult Function(NotePage notePage)? removePage,
    TResult Function(NotePage notePage)? notePageSelected,
    TResult Function()? createEmptyNotePage,
    required TResult orElse(),
  }) {
    if (addPage != null) {
      return addPage(notePage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchStarted value) fetchStarted,
    required TResult Function(_AddPage value) addPage,
    required TResult Function(_UpdatePage value) updatePage,
    required TResult Function(_RemovePage value) removePage,
    required TResult Function(_NotePageSelected value) notePageSelected,
    required TResult Function(_CreateEmptyNotePage value) createEmptyNotePage,
  }) {
    return addPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchStarted value)? fetchStarted,
    TResult Function(_AddPage value)? addPage,
    TResult Function(_UpdatePage value)? updatePage,
    TResult Function(_RemovePage value)? removePage,
    TResult Function(_NotePageSelected value)? notePageSelected,
    TResult Function(_CreateEmptyNotePage value)? createEmptyNotePage,
  }) {
    return addPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchStarted value)? fetchStarted,
    TResult Function(_AddPage value)? addPage,
    TResult Function(_UpdatePage value)? updatePage,
    TResult Function(_RemovePage value)? removePage,
    TResult Function(_NotePageSelected value)? notePageSelected,
    TResult Function(_CreateEmptyNotePage value)? createEmptyNotePage,
    required TResult orElse(),
  }) {
    if (addPage != null) {
      return addPage(this);
    }
    return orElse();
  }
}

abstract class _AddPage implements MenuEvent {
  const factory _AddPage({required NotePage notePage}) = _$_AddPage;

  NotePage get notePage;
  @JsonKey(ignore: true)
  _$AddPageCopyWith<_AddPage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UpdatePageCopyWith<$Res> {
  factory _$UpdatePageCopyWith(
          _UpdatePage value, $Res Function(_UpdatePage) then) =
      __$UpdatePageCopyWithImpl<$Res>;
  $Res call({NotePage notePage});

  $NotePageCopyWith<$Res> get notePage;
}

/// @nodoc
class __$UpdatePageCopyWithImpl<$Res> extends _$MenuEventCopyWithImpl<$Res>
    implements _$UpdatePageCopyWith<$Res> {
  __$UpdatePageCopyWithImpl(
      _UpdatePage _value, $Res Function(_UpdatePage) _then)
      : super(_value, (v) => _then(v as _UpdatePage));

  @override
  _UpdatePage get _value => super._value as _UpdatePage;

  @override
  $Res call({
    Object? notePage = freezed,
  }) {
    return _then(_UpdatePage(
      notePage: notePage == freezed
          ? _value.notePage
          : notePage // ignore: cast_nullable_to_non_nullable
              as NotePage,
    ));
  }

  @override
  $NotePageCopyWith<$Res> get notePage {
    return $NotePageCopyWith<$Res>(_value.notePage, (value) {
      return _then(_value.copyWith(notePage: value));
    });
  }
}

/// @nodoc

class _$_UpdatePage with DiagnosticableTreeMixin implements _UpdatePage {
  const _$_UpdatePage({required this.notePage});

  @override
  final NotePage notePage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MenuEvent.updatePage(notePage: $notePage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MenuEvent.updatePage'))
      ..add(DiagnosticsProperty('notePage', notePage));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdatePage &&
            const DeepCollectionEquality().equals(other.notePage, notePage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(notePage));

  @JsonKey(ignore: true)
  @override
  _$UpdatePageCopyWith<_UpdatePage> get copyWith =>
      __$UpdatePageCopyWithImpl<_UpdatePage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchStarted,
    required TResult Function(NotePage notePage) addPage,
    required TResult Function(NotePage notePage) updatePage,
    required TResult Function(NotePage notePage) removePage,
    required TResult Function(NotePage notePage) notePageSelected,
    required TResult Function() createEmptyNotePage,
  }) {
    return updatePage(notePage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchStarted,
    TResult Function(NotePage notePage)? addPage,
    TResult Function(NotePage notePage)? updatePage,
    TResult Function(NotePage notePage)? removePage,
    TResult Function(NotePage notePage)? notePageSelected,
    TResult Function()? createEmptyNotePage,
  }) {
    return updatePage?.call(notePage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchStarted,
    TResult Function(NotePage notePage)? addPage,
    TResult Function(NotePage notePage)? updatePage,
    TResult Function(NotePage notePage)? removePage,
    TResult Function(NotePage notePage)? notePageSelected,
    TResult Function()? createEmptyNotePage,
    required TResult orElse(),
  }) {
    if (updatePage != null) {
      return updatePage(notePage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchStarted value) fetchStarted,
    required TResult Function(_AddPage value) addPage,
    required TResult Function(_UpdatePage value) updatePage,
    required TResult Function(_RemovePage value) removePage,
    required TResult Function(_NotePageSelected value) notePageSelected,
    required TResult Function(_CreateEmptyNotePage value) createEmptyNotePage,
  }) {
    return updatePage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchStarted value)? fetchStarted,
    TResult Function(_AddPage value)? addPage,
    TResult Function(_UpdatePage value)? updatePage,
    TResult Function(_RemovePage value)? removePage,
    TResult Function(_NotePageSelected value)? notePageSelected,
    TResult Function(_CreateEmptyNotePage value)? createEmptyNotePage,
  }) {
    return updatePage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchStarted value)? fetchStarted,
    TResult Function(_AddPage value)? addPage,
    TResult Function(_UpdatePage value)? updatePage,
    TResult Function(_RemovePage value)? removePage,
    TResult Function(_NotePageSelected value)? notePageSelected,
    TResult Function(_CreateEmptyNotePage value)? createEmptyNotePage,
    required TResult orElse(),
  }) {
    if (updatePage != null) {
      return updatePage(this);
    }
    return orElse();
  }
}

abstract class _UpdatePage implements MenuEvent {
  const factory _UpdatePage({required NotePage notePage}) = _$_UpdatePage;

  NotePage get notePage;
  @JsonKey(ignore: true)
  _$UpdatePageCopyWith<_UpdatePage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RemovePageCopyWith<$Res> {
  factory _$RemovePageCopyWith(
          _RemovePage value, $Res Function(_RemovePage) then) =
      __$RemovePageCopyWithImpl<$Res>;
  $Res call({NotePage notePage});

  $NotePageCopyWith<$Res> get notePage;
}

/// @nodoc
class __$RemovePageCopyWithImpl<$Res> extends _$MenuEventCopyWithImpl<$Res>
    implements _$RemovePageCopyWith<$Res> {
  __$RemovePageCopyWithImpl(
      _RemovePage _value, $Res Function(_RemovePage) _then)
      : super(_value, (v) => _then(v as _RemovePage));

  @override
  _RemovePage get _value => super._value as _RemovePage;

  @override
  $Res call({
    Object? notePage = freezed,
  }) {
    return _then(_RemovePage(
      notePage: notePage == freezed
          ? _value.notePage
          : notePage // ignore: cast_nullable_to_non_nullable
              as NotePage,
    ));
  }

  @override
  $NotePageCopyWith<$Res> get notePage {
    return $NotePageCopyWith<$Res>(_value.notePage, (value) {
      return _then(_value.copyWith(notePage: value));
    });
  }
}

/// @nodoc

class _$_RemovePage with DiagnosticableTreeMixin implements _RemovePage {
  const _$_RemovePage({required this.notePage});

  @override
  final NotePage notePage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MenuEvent.removePage(notePage: $notePage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MenuEvent.removePage'))
      ..add(DiagnosticsProperty('notePage', notePage));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RemovePage &&
            const DeepCollectionEquality().equals(other.notePage, notePage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(notePage));

  @JsonKey(ignore: true)
  @override
  _$RemovePageCopyWith<_RemovePage> get copyWith =>
      __$RemovePageCopyWithImpl<_RemovePage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchStarted,
    required TResult Function(NotePage notePage) addPage,
    required TResult Function(NotePage notePage) updatePage,
    required TResult Function(NotePage notePage) removePage,
    required TResult Function(NotePage notePage) notePageSelected,
    required TResult Function() createEmptyNotePage,
  }) {
    return removePage(notePage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchStarted,
    TResult Function(NotePage notePage)? addPage,
    TResult Function(NotePage notePage)? updatePage,
    TResult Function(NotePage notePage)? removePage,
    TResult Function(NotePage notePage)? notePageSelected,
    TResult Function()? createEmptyNotePage,
  }) {
    return removePage?.call(notePage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchStarted,
    TResult Function(NotePage notePage)? addPage,
    TResult Function(NotePage notePage)? updatePage,
    TResult Function(NotePage notePage)? removePage,
    TResult Function(NotePage notePage)? notePageSelected,
    TResult Function()? createEmptyNotePage,
    required TResult orElse(),
  }) {
    if (removePage != null) {
      return removePage(notePage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchStarted value) fetchStarted,
    required TResult Function(_AddPage value) addPage,
    required TResult Function(_UpdatePage value) updatePage,
    required TResult Function(_RemovePage value) removePage,
    required TResult Function(_NotePageSelected value) notePageSelected,
    required TResult Function(_CreateEmptyNotePage value) createEmptyNotePage,
  }) {
    return removePage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchStarted value)? fetchStarted,
    TResult Function(_AddPage value)? addPage,
    TResult Function(_UpdatePage value)? updatePage,
    TResult Function(_RemovePage value)? removePage,
    TResult Function(_NotePageSelected value)? notePageSelected,
    TResult Function(_CreateEmptyNotePage value)? createEmptyNotePage,
  }) {
    return removePage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchStarted value)? fetchStarted,
    TResult Function(_AddPage value)? addPage,
    TResult Function(_UpdatePage value)? updatePage,
    TResult Function(_RemovePage value)? removePage,
    TResult Function(_NotePageSelected value)? notePageSelected,
    TResult Function(_CreateEmptyNotePage value)? createEmptyNotePage,
    required TResult orElse(),
  }) {
    if (removePage != null) {
      return removePage(this);
    }
    return orElse();
  }
}

abstract class _RemovePage implements MenuEvent {
  const factory _RemovePage({required NotePage notePage}) = _$_RemovePage;

  NotePage get notePage;
  @JsonKey(ignore: true)
  _$RemovePageCopyWith<_RemovePage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$NotePageSelectedCopyWith<$Res> {
  factory _$NotePageSelectedCopyWith(
          _NotePageSelected value, $Res Function(_NotePageSelected) then) =
      __$NotePageSelectedCopyWithImpl<$Res>;
  $Res call({NotePage notePage});

  $NotePageCopyWith<$Res> get notePage;
}

/// @nodoc
class __$NotePageSelectedCopyWithImpl<$Res>
    extends _$MenuEventCopyWithImpl<$Res>
    implements _$NotePageSelectedCopyWith<$Res> {
  __$NotePageSelectedCopyWithImpl(
      _NotePageSelected _value, $Res Function(_NotePageSelected) _then)
      : super(_value, (v) => _then(v as _NotePageSelected));

  @override
  _NotePageSelected get _value => super._value as _NotePageSelected;

  @override
  $Res call({
    Object? notePage = freezed,
  }) {
    return _then(_NotePageSelected(
      notePage: notePage == freezed
          ? _value.notePage
          : notePage // ignore: cast_nullable_to_non_nullable
              as NotePage,
    ));
  }

  @override
  $NotePageCopyWith<$Res> get notePage {
    return $NotePageCopyWith<$Res>(_value.notePage, (value) {
      return _then(_value.copyWith(notePage: value));
    });
  }
}

/// @nodoc

class _$_NotePageSelected
    with DiagnosticableTreeMixin
    implements _NotePageSelected {
  const _$_NotePageSelected({required this.notePage});

  @override
  final NotePage notePage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MenuEvent.notePageSelected(notePage: $notePage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MenuEvent.notePageSelected'))
      ..add(DiagnosticsProperty('notePage', notePage));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NotePageSelected &&
            const DeepCollectionEquality().equals(other.notePage, notePage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(notePage));

  @JsonKey(ignore: true)
  @override
  _$NotePageSelectedCopyWith<_NotePageSelected> get copyWith =>
      __$NotePageSelectedCopyWithImpl<_NotePageSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchStarted,
    required TResult Function(NotePage notePage) addPage,
    required TResult Function(NotePage notePage) updatePage,
    required TResult Function(NotePage notePage) removePage,
    required TResult Function(NotePage notePage) notePageSelected,
    required TResult Function() createEmptyNotePage,
  }) {
    return notePageSelected(notePage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchStarted,
    TResult Function(NotePage notePage)? addPage,
    TResult Function(NotePage notePage)? updatePage,
    TResult Function(NotePage notePage)? removePage,
    TResult Function(NotePage notePage)? notePageSelected,
    TResult Function()? createEmptyNotePage,
  }) {
    return notePageSelected?.call(notePage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchStarted,
    TResult Function(NotePage notePage)? addPage,
    TResult Function(NotePage notePage)? updatePage,
    TResult Function(NotePage notePage)? removePage,
    TResult Function(NotePage notePage)? notePageSelected,
    TResult Function()? createEmptyNotePage,
    required TResult orElse(),
  }) {
    if (notePageSelected != null) {
      return notePageSelected(notePage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchStarted value) fetchStarted,
    required TResult Function(_AddPage value) addPage,
    required TResult Function(_UpdatePage value) updatePage,
    required TResult Function(_RemovePage value) removePage,
    required TResult Function(_NotePageSelected value) notePageSelected,
    required TResult Function(_CreateEmptyNotePage value) createEmptyNotePage,
  }) {
    return notePageSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchStarted value)? fetchStarted,
    TResult Function(_AddPage value)? addPage,
    TResult Function(_UpdatePage value)? updatePage,
    TResult Function(_RemovePage value)? removePage,
    TResult Function(_NotePageSelected value)? notePageSelected,
    TResult Function(_CreateEmptyNotePage value)? createEmptyNotePage,
  }) {
    return notePageSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchStarted value)? fetchStarted,
    TResult Function(_AddPage value)? addPage,
    TResult Function(_UpdatePage value)? updatePage,
    TResult Function(_RemovePage value)? removePage,
    TResult Function(_NotePageSelected value)? notePageSelected,
    TResult Function(_CreateEmptyNotePage value)? createEmptyNotePage,
    required TResult orElse(),
  }) {
    if (notePageSelected != null) {
      return notePageSelected(this);
    }
    return orElse();
  }
}

abstract class _NotePageSelected implements MenuEvent {
  const factory _NotePageSelected({required NotePage notePage}) =
      _$_NotePageSelected;

  NotePage get notePage;
  @JsonKey(ignore: true)
  _$NotePageSelectedCopyWith<_NotePageSelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CreateEmptyNotePageCopyWith<$Res> {
  factory _$CreateEmptyNotePageCopyWith(_CreateEmptyNotePage value,
          $Res Function(_CreateEmptyNotePage) then) =
      __$CreateEmptyNotePageCopyWithImpl<$Res>;
}

/// @nodoc
class __$CreateEmptyNotePageCopyWithImpl<$Res>
    extends _$MenuEventCopyWithImpl<$Res>
    implements _$CreateEmptyNotePageCopyWith<$Res> {
  __$CreateEmptyNotePageCopyWithImpl(
      _CreateEmptyNotePage _value, $Res Function(_CreateEmptyNotePage) _then)
      : super(_value, (v) => _then(v as _CreateEmptyNotePage));

  @override
  _CreateEmptyNotePage get _value => super._value as _CreateEmptyNotePage;
}

/// @nodoc

class _$_CreateEmptyNotePage
    with DiagnosticableTreeMixin
    implements _CreateEmptyNotePage {
  const _$_CreateEmptyNotePage();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MenuEvent.createEmptyNotePage()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'MenuEvent.createEmptyNotePage'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _CreateEmptyNotePage);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchStarted,
    required TResult Function(NotePage notePage) addPage,
    required TResult Function(NotePage notePage) updatePage,
    required TResult Function(NotePage notePage) removePage,
    required TResult Function(NotePage notePage) notePageSelected,
    required TResult Function() createEmptyNotePage,
  }) {
    return createEmptyNotePage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchStarted,
    TResult Function(NotePage notePage)? addPage,
    TResult Function(NotePage notePage)? updatePage,
    TResult Function(NotePage notePage)? removePage,
    TResult Function(NotePage notePage)? notePageSelected,
    TResult Function()? createEmptyNotePage,
  }) {
    return createEmptyNotePage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchStarted,
    TResult Function(NotePage notePage)? addPage,
    TResult Function(NotePage notePage)? updatePage,
    TResult Function(NotePage notePage)? removePage,
    TResult Function(NotePage notePage)? notePageSelected,
    TResult Function()? createEmptyNotePage,
    required TResult orElse(),
  }) {
    if (createEmptyNotePage != null) {
      return createEmptyNotePage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchStarted value) fetchStarted,
    required TResult Function(_AddPage value) addPage,
    required TResult Function(_UpdatePage value) updatePage,
    required TResult Function(_RemovePage value) removePage,
    required TResult Function(_NotePageSelected value) notePageSelected,
    required TResult Function(_CreateEmptyNotePage value) createEmptyNotePage,
  }) {
    return createEmptyNotePage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchStarted value)? fetchStarted,
    TResult Function(_AddPage value)? addPage,
    TResult Function(_UpdatePage value)? updatePage,
    TResult Function(_RemovePage value)? removePage,
    TResult Function(_NotePageSelected value)? notePageSelected,
    TResult Function(_CreateEmptyNotePage value)? createEmptyNotePage,
  }) {
    return createEmptyNotePage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchStarted value)? fetchStarted,
    TResult Function(_AddPage value)? addPage,
    TResult Function(_UpdatePage value)? updatePage,
    TResult Function(_RemovePage value)? removePage,
    TResult Function(_NotePageSelected value)? notePageSelected,
    TResult Function(_CreateEmptyNotePage value)? createEmptyNotePage,
    required TResult orElse(),
  }) {
    if (createEmptyNotePage != null) {
      return createEmptyNotePage(this);
    }
    return orElse();
  }
}

abstract class _CreateEmptyNotePage implements MenuEvent {
  const factory _CreateEmptyNotePage() = _$_CreateEmptyNotePage;
}

/// @nodoc
class _$MenuStateTearOff {
  const _$MenuStateTearOff();

  _MenuState call(
      {required NotePage notePageSelected,
      List<NotePage> notePages = const [],
      MenuStatus status = const MenuInitial()}) {
    return _MenuState(
      notePageSelected: notePageSelected,
      notePages: notePages,
      status: status,
    );
  }
}

/// @nodoc
const $MenuState = _$MenuStateTearOff();

/// @nodoc
mixin _$MenuState {
  NotePage get notePageSelected => throw _privateConstructorUsedError;
  List<NotePage> get notePages => throw _privateConstructorUsedError;
  MenuStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MenuStateCopyWith<MenuState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MenuStateCopyWith<$Res> {
  factory $MenuStateCopyWith(MenuState value, $Res Function(MenuState) then) =
      _$MenuStateCopyWithImpl<$Res>;
  $Res call(
      {NotePage notePageSelected, List<NotePage> notePages, MenuStatus status});

  $NotePageCopyWith<$Res> get notePageSelected;
  $MenuStatusCopyWith<$Res> get status;
}

/// @nodoc
class _$MenuStateCopyWithImpl<$Res> implements $MenuStateCopyWith<$Res> {
  _$MenuStateCopyWithImpl(this._value, this._then);

  final MenuState _value;
  // ignore: unused_field
  final $Res Function(MenuState) _then;

  @override
  $Res call({
    Object? notePageSelected = freezed,
    Object? notePages = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      notePageSelected: notePageSelected == freezed
          ? _value.notePageSelected
          : notePageSelected // ignore: cast_nullable_to_non_nullable
              as NotePage,
      notePages: notePages == freezed
          ? _value.notePages
          : notePages // ignore: cast_nullable_to_non_nullable
              as List<NotePage>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as MenuStatus,
    ));
  }

  @override
  $NotePageCopyWith<$Res> get notePageSelected {
    return $NotePageCopyWith<$Res>(_value.notePageSelected, (value) {
      return _then(_value.copyWith(notePageSelected: value));
    });
  }

  @override
  $MenuStatusCopyWith<$Res> get status {
    return $MenuStatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value));
    });
  }
}

/// @nodoc
abstract class _$MenuStateCopyWith<$Res> implements $MenuStateCopyWith<$Res> {
  factory _$MenuStateCopyWith(
          _MenuState value, $Res Function(_MenuState) then) =
      __$MenuStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {NotePage notePageSelected, List<NotePage> notePages, MenuStatus status});

  @override
  $NotePageCopyWith<$Res> get notePageSelected;
  @override
  $MenuStatusCopyWith<$Res> get status;
}

/// @nodoc
class __$MenuStateCopyWithImpl<$Res> extends _$MenuStateCopyWithImpl<$Res>
    implements _$MenuStateCopyWith<$Res> {
  __$MenuStateCopyWithImpl(_MenuState _value, $Res Function(_MenuState) _then)
      : super(_value, (v) => _then(v as _MenuState));

  @override
  _MenuState get _value => super._value as _MenuState;

  @override
  $Res call({
    Object? notePageSelected = freezed,
    Object? notePages = freezed,
    Object? status = freezed,
  }) {
    return _then(_MenuState(
      notePageSelected: notePageSelected == freezed
          ? _value.notePageSelected
          : notePageSelected // ignore: cast_nullable_to_non_nullable
              as NotePage,
      notePages: notePages == freezed
          ? _value.notePages
          : notePages // ignore: cast_nullable_to_non_nullable
              as List<NotePage>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as MenuStatus,
    ));
  }
}

/// @nodoc

class _$_MenuState with DiagnosticableTreeMixin implements _MenuState {
  const _$_MenuState(
      {required this.notePageSelected,
      this.notePages = const [],
      this.status = const MenuInitial()});

  @override
  final NotePage notePageSelected;
  @JsonKey()
  @override
  final List<NotePage> notePages;
  @JsonKey()
  @override
  final MenuStatus status;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MenuState(notePageSelected: $notePageSelected, notePages: $notePages, status: $status)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MenuState'))
      ..add(DiagnosticsProperty('notePageSelected', notePageSelected))
      ..add(DiagnosticsProperty('notePages', notePages))
      ..add(DiagnosticsProperty('status', status));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MenuState &&
            const DeepCollectionEquality()
                .equals(other.notePageSelected, notePageSelected) &&
            const DeepCollectionEquality().equals(other.notePages, notePages) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(notePageSelected),
      const DeepCollectionEquality().hash(notePages),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$MenuStateCopyWith<_MenuState> get copyWith =>
      __$MenuStateCopyWithImpl<_MenuState>(this, _$identity);
}

abstract class _MenuState implements MenuState {
  const factory _MenuState(
      {required NotePage notePageSelected,
      List<NotePage> notePages,
      MenuStatus status}) = _$_MenuState;

  @override
  NotePage get notePageSelected;
  @override
  List<NotePage> get notePages;
  @override
  MenuStatus get status;
  @override
  @JsonKey(ignore: true)
  _$MenuStateCopyWith<_MenuState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$MenuStatusTearOff {
  const _$MenuStatusTearOff();

  MenuInitial initial() {
    return const MenuInitial();
  }

  MenuFetchInProgress fetchInProgress() {
    return const MenuFetchInProgress();
  }

  MenuSuccess success() {
    return const MenuSuccess();
  }

  MenuError error() {
    return const MenuError();
  }
}

/// @nodoc
const $MenuStatus = _$MenuStatusTearOff();

/// @nodoc
mixin _$MenuStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchInProgress,
    required TResult Function() success,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchInProgress,
    TResult Function()? success,
    TResult Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchInProgress,
    TResult Function()? success,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MenuInitial value) initial,
    required TResult Function(MenuFetchInProgress value) fetchInProgress,
    required TResult Function(MenuSuccess value) success,
    required TResult Function(MenuError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MenuInitial value)? initial,
    TResult Function(MenuFetchInProgress value)? fetchInProgress,
    TResult Function(MenuSuccess value)? success,
    TResult Function(MenuError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MenuInitial value)? initial,
    TResult Function(MenuFetchInProgress value)? fetchInProgress,
    TResult Function(MenuSuccess value)? success,
    TResult Function(MenuError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MenuStatusCopyWith<$Res> {
  factory $MenuStatusCopyWith(
          MenuStatus value, $Res Function(MenuStatus) then) =
      _$MenuStatusCopyWithImpl<$Res>;
}

/// @nodoc
class _$MenuStatusCopyWithImpl<$Res> implements $MenuStatusCopyWith<$Res> {
  _$MenuStatusCopyWithImpl(this._value, this._then);

  final MenuStatus _value;
  // ignore: unused_field
  final $Res Function(MenuStatus) _then;
}

/// @nodoc
abstract class $MenuInitialCopyWith<$Res> {
  factory $MenuInitialCopyWith(
          MenuInitial value, $Res Function(MenuInitial) then) =
      _$MenuInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$MenuInitialCopyWithImpl<$Res> extends _$MenuStatusCopyWithImpl<$Res>
    implements $MenuInitialCopyWith<$Res> {
  _$MenuInitialCopyWithImpl(
      MenuInitial _value, $Res Function(MenuInitial) _then)
      : super(_value, (v) => _then(v as MenuInitial));

  @override
  MenuInitial get _value => super._value as MenuInitial;
}

/// @nodoc

class _$MenuInitial with DiagnosticableTreeMixin implements MenuInitial {
  const _$MenuInitial();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MenuStatus.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'MenuStatus.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is MenuInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchInProgress,
    required TResult Function() success,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchInProgress,
    TResult Function()? success,
    TResult Function()? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchInProgress,
    TResult Function()? success,
    TResult Function()? error,
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
    required TResult Function(MenuInitial value) initial,
    required TResult Function(MenuFetchInProgress value) fetchInProgress,
    required TResult Function(MenuSuccess value) success,
    required TResult Function(MenuError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MenuInitial value)? initial,
    TResult Function(MenuFetchInProgress value)? fetchInProgress,
    TResult Function(MenuSuccess value)? success,
    TResult Function(MenuError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MenuInitial value)? initial,
    TResult Function(MenuFetchInProgress value)? fetchInProgress,
    TResult Function(MenuSuccess value)? success,
    TResult Function(MenuError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class MenuInitial implements MenuStatus {
  const factory MenuInitial() = _$MenuInitial;
}

/// @nodoc
abstract class $MenuFetchInProgressCopyWith<$Res> {
  factory $MenuFetchInProgressCopyWith(
          MenuFetchInProgress value, $Res Function(MenuFetchInProgress) then) =
      _$MenuFetchInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class _$MenuFetchInProgressCopyWithImpl<$Res>
    extends _$MenuStatusCopyWithImpl<$Res>
    implements $MenuFetchInProgressCopyWith<$Res> {
  _$MenuFetchInProgressCopyWithImpl(
      MenuFetchInProgress _value, $Res Function(MenuFetchInProgress) _then)
      : super(_value, (v) => _then(v as MenuFetchInProgress));

  @override
  MenuFetchInProgress get _value => super._value as MenuFetchInProgress;
}

/// @nodoc

class _$MenuFetchInProgress
    with DiagnosticableTreeMixin
    implements MenuFetchInProgress {
  const _$MenuFetchInProgress();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MenuStatus.fetchInProgress()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'MenuStatus.fetchInProgress'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is MenuFetchInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchInProgress,
    required TResult Function() success,
    required TResult Function() error,
  }) {
    return fetchInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchInProgress,
    TResult Function()? success,
    TResult Function()? error,
  }) {
    return fetchInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchInProgress,
    TResult Function()? success,
    TResult Function()? error,
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
    required TResult Function(MenuInitial value) initial,
    required TResult Function(MenuFetchInProgress value) fetchInProgress,
    required TResult Function(MenuSuccess value) success,
    required TResult Function(MenuError value) error,
  }) {
    return fetchInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MenuInitial value)? initial,
    TResult Function(MenuFetchInProgress value)? fetchInProgress,
    TResult Function(MenuSuccess value)? success,
    TResult Function(MenuError value)? error,
  }) {
    return fetchInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MenuInitial value)? initial,
    TResult Function(MenuFetchInProgress value)? fetchInProgress,
    TResult Function(MenuSuccess value)? success,
    TResult Function(MenuError value)? error,
    required TResult orElse(),
  }) {
    if (fetchInProgress != null) {
      return fetchInProgress(this);
    }
    return orElse();
  }
}

abstract class MenuFetchInProgress implements MenuStatus {
  const factory MenuFetchInProgress() = _$MenuFetchInProgress;
}

/// @nodoc
abstract class $MenuSuccessCopyWith<$Res> {
  factory $MenuSuccessCopyWith(
          MenuSuccess value, $Res Function(MenuSuccess) then) =
      _$MenuSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class _$MenuSuccessCopyWithImpl<$Res> extends _$MenuStatusCopyWithImpl<$Res>
    implements $MenuSuccessCopyWith<$Res> {
  _$MenuSuccessCopyWithImpl(
      MenuSuccess _value, $Res Function(MenuSuccess) _then)
      : super(_value, (v) => _then(v as MenuSuccess));

  @override
  MenuSuccess get _value => super._value as MenuSuccess;
}

/// @nodoc

class _$MenuSuccess with DiagnosticableTreeMixin implements MenuSuccess {
  const _$MenuSuccess();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MenuStatus.success()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'MenuStatus.success'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is MenuSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchInProgress,
    required TResult Function() success,
    required TResult Function() error,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchInProgress,
    TResult Function()? success,
    TResult Function()? error,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchInProgress,
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
    required TResult Function(MenuInitial value) initial,
    required TResult Function(MenuFetchInProgress value) fetchInProgress,
    required TResult Function(MenuSuccess value) success,
    required TResult Function(MenuError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MenuInitial value)? initial,
    TResult Function(MenuFetchInProgress value)? fetchInProgress,
    TResult Function(MenuSuccess value)? success,
    TResult Function(MenuError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MenuInitial value)? initial,
    TResult Function(MenuFetchInProgress value)? fetchInProgress,
    TResult Function(MenuSuccess value)? success,
    TResult Function(MenuError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class MenuSuccess implements MenuStatus {
  const factory MenuSuccess() = _$MenuSuccess;
}

/// @nodoc
abstract class $MenuErrorCopyWith<$Res> {
  factory $MenuErrorCopyWith(MenuError value, $Res Function(MenuError) then) =
      _$MenuErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$MenuErrorCopyWithImpl<$Res> extends _$MenuStatusCopyWithImpl<$Res>
    implements $MenuErrorCopyWith<$Res> {
  _$MenuErrorCopyWithImpl(MenuError _value, $Res Function(MenuError) _then)
      : super(_value, (v) => _then(v as MenuError));

  @override
  MenuError get _value => super._value as MenuError;
}

/// @nodoc

class _$MenuError with DiagnosticableTreeMixin implements MenuError {
  const _$MenuError();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MenuStatus.error()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'MenuStatus.error'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is MenuError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchInProgress,
    required TResult Function() success,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchInProgress,
    TResult Function()? success,
    TResult Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchInProgress,
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
    required TResult Function(MenuInitial value) initial,
    required TResult Function(MenuFetchInProgress value) fetchInProgress,
    required TResult Function(MenuSuccess value) success,
    required TResult Function(MenuError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MenuInitial value)? initial,
    TResult Function(MenuFetchInProgress value)? fetchInProgress,
    TResult Function(MenuSuccess value)? success,
    TResult Function(MenuError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MenuInitial value)? initial,
    TResult Function(MenuFetchInProgress value)? fetchInProgress,
    TResult Function(MenuSuccess value)? success,
    TResult Function(MenuError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class MenuError implements MenuStatus {
  const factory MenuError() = _$MenuError;
}
