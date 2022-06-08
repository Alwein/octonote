// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'notepad_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NotePadEventTearOff {
  const _$NotePadEventTearOff();

  _FetchStarted fetchStarted({required NotePage notePage}) {
    return _FetchStarted(
      notePage: notePage,
    );
  }

  _AddComponent addComponent({required Component component}) {
    return _AddComponent(
      component: component,
    );
  }

  _UpdateComponent updateComponent({required Component component}) {
    return _UpdateComponent(
      component: component,
    );
  }

  _RemoveComponent removeComponent({required Component component}) {
    return _RemoveComponent(
      component: component,
    );
  }

  _ComponentSelected componentSelected({required Component component}) {
    return _ComponentSelected(
      component: component,
    );
  }

  _CreateEmptyComponent createEmptyComponent({int? index}) {
    return _CreateEmptyComponent(
      index: index,
    );
  }
}

/// @nodoc
const $NotePadEvent = _$NotePadEventTearOff();

/// @nodoc
mixin _$NotePadEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NotePage notePage) fetchStarted,
    required TResult Function(Component component) addComponent,
    required TResult Function(Component component) updateComponent,
    required TResult Function(Component component) removeComponent,
    required TResult Function(Component component) componentSelected,
    required TResult Function(int? index) createEmptyComponent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(NotePage notePage)? fetchStarted,
    TResult Function(Component component)? addComponent,
    TResult Function(Component component)? updateComponent,
    TResult Function(Component component)? removeComponent,
    TResult Function(Component component)? componentSelected,
    TResult Function(int? index)? createEmptyComponent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NotePage notePage)? fetchStarted,
    TResult Function(Component component)? addComponent,
    TResult Function(Component component)? updateComponent,
    TResult Function(Component component)? removeComponent,
    TResult Function(Component component)? componentSelected,
    TResult Function(int? index)? createEmptyComponent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchStarted value) fetchStarted,
    required TResult Function(_AddComponent value) addComponent,
    required TResult Function(_UpdateComponent value) updateComponent,
    required TResult Function(_RemoveComponent value) removeComponent,
    required TResult Function(_ComponentSelected value) componentSelected,
    required TResult Function(_CreateEmptyComponent value) createEmptyComponent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchStarted value)? fetchStarted,
    TResult Function(_AddComponent value)? addComponent,
    TResult Function(_UpdateComponent value)? updateComponent,
    TResult Function(_RemoveComponent value)? removeComponent,
    TResult Function(_ComponentSelected value)? componentSelected,
    TResult Function(_CreateEmptyComponent value)? createEmptyComponent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchStarted value)? fetchStarted,
    TResult Function(_AddComponent value)? addComponent,
    TResult Function(_UpdateComponent value)? updateComponent,
    TResult Function(_RemoveComponent value)? removeComponent,
    TResult Function(_ComponentSelected value)? componentSelected,
    TResult Function(_CreateEmptyComponent value)? createEmptyComponent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotePadEventCopyWith<$Res> {
  factory $NotePadEventCopyWith(
          NotePadEvent value, $Res Function(NotePadEvent) then) =
      _$NotePadEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$NotePadEventCopyWithImpl<$Res> implements $NotePadEventCopyWith<$Res> {
  _$NotePadEventCopyWithImpl(this._value, this._then);

  final NotePadEvent _value;
  // ignore: unused_field
  final $Res Function(NotePadEvent) _then;
}

/// @nodoc
abstract class _$FetchStartedCopyWith<$Res> {
  factory _$FetchStartedCopyWith(
          _FetchStarted value, $Res Function(_FetchStarted) then) =
      __$FetchStartedCopyWithImpl<$Res>;
  $Res call({NotePage notePage});

  $NotePageCopyWith<$Res> get notePage;
}

/// @nodoc
class __$FetchStartedCopyWithImpl<$Res> extends _$NotePadEventCopyWithImpl<$Res>
    implements _$FetchStartedCopyWith<$Res> {
  __$FetchStartedCopyWithImpl(
      _FetchStarted _value, $Res Function(_FetchStarted) _then)
      : super(_value, (v) => _then(v as _FetchStarted));

  @override
  _FetchStarted get _value => super._value as _FetchStarted;

  @override
  $Res call({
    Object? notePage = freezed,
  }) {
    return _then(_FetchStarted(
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

class _$_FetchStarted implements _FetchStarted {
  const _$_FetchStarted({required this.notePage});

  @override
  final NotePage notePage;

  @override
  String toString() {
    return 'NotePadEvent.fetchStarted(notePage: $notePage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FetchStarted &&
            const DeepCollectionEquality().equals(other.notePage, notePage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(notePage));

  @JsonKey(ignore: true)
  @override
  _$FetchStartedCopyWith<_FetchStarted> get copyWith =>
      __$FetchStartedCopyWithImpl<_FetchStarted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NotePage notePage) fetchStarted,
    required TResult Function(Component component) addComponent,
    required TResult Function(Component component) updateComponent,
    required TResult Function(Component component) removeComponent,
    required TResult Function(Component component) componentSelected,
    required TResult Function(int? index) createEmptyComponent,
  }) {
    return fetchStarted(notePage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(NotePage notePage)? fetchStarted,
    TResult Function(Component component)? addComponent,
    TResult Function(Component component)? updateComponent,
    TResult Function(Component component)? removeComponent,
    TResult Function(Component component)? componentSelected,
    TResult Function(int? index)? createEmptyComponent,
  }) {
    return fetchStarted?.call(notePage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NotePage notePage)? fetchStarted,
    TResult Function(Component component)? addComponent,
    TResult Function(Component component)? updateComponent,
    TResult Function(Component component)? removeComponent,
    TResult Function(Component component)? componentSelected,
    TResult Function(int? index)? createEmptyComponent,
    required TResult orElse(),
  }) {
    if (fetchStarted != null) {
      return fetchStarted(notePage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchStarted value) fetchStarted,
    required TResult Function(_AddComponent value) addComponent,
    required TResult Function(_UpdateComponent value) updateComponent,
    required TResult Function(_RemoveComponent value) removeComponent,
    required TResult Function(_ComponentSelected value) componentSelected,
    required TResult Function(_CreateEmptyComponent value) createEmptyComponent,
  }) {
    return fetchStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchStarted value)? fetchStarted,
    TResult Function(_AddComponent value)? addComponent,
    TResult Function(_UpdateComponent value)? updateComponent,
    TResult Function(_RemoveComponent value)? removeComponent,
    TResult Function(_ComponentSelected value)? componentSelected,
    TResult Function(_CreateEmptyComponent value)? createEmptyComponent,
  }) {
    return fetchStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchStarted value)? fetchStarted,
    TResult Function(_AddComponent value)? addComponent,
    TResult Function(_UpdateComponent value)? updateComponent,
    TResult Function(_RemoveComponent value)? removeComponent,
    TResult Function(_ComponentSelected value)? componentSelected,
    TResult Function(_CreateEmptyComponent value)? createEmptyComponent,
    required TResult orElse(),
  }) {
    if (fetchStarted != null) {
      return fetchStarted(this);
    }
    return orElse();
  }
}

abstract class _FetchStarted implements NotePadEvent {
  const factory _FetchStarted({required NotePage notePage}) = _$_FetchStarted;

  NotePage get notePage;
  @JsonKey(ignore: true)
  _$FetchStartedCopyWith<_FetchStarted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AddComponentCopyWith<$Res> {
  factory _$AddComponentCopyWith(
          _AddComponent value, $Res Function(_AddComponent) then) =
      __$AddComponentCopyWithImpl<$Res>;
  $Res call({Component component});

  $ComponentCopyWith<$Res> get component;
}

/// @nodoc
class __$AddComponentCopyWithImpl<$Res> extends _$NotePadEventCopyWithImpl<$Res>
    implements _$AddComponentCopyWith<$Res> {
  __$AddComponentCopyWithImpl(
      _AddComponent _value, $Res Function(_AddComponent) _then)
      : super(_value, (v) => _then(v as _AddComponent));

  @override
  _AddComponent get _value => super._value as _AddComponent;

  @override
  $Res call({
    Object? component = freezed,
  }) {
    return _then(_AddComponent(
      component: component == freezed
          ? _value.component
          : component // ignore: cast_nullable_to_non_nullable
              as Component,
    ));
  }

  @override
  $ComponentCopyWith<$Res> get component {
    return $ComponentCopyWith<$Res>(_value.component, (value) {
      return _then(_value.copyWith(component: value));
    });
  }
}

/// @nodoc

class _$_AddComponent implements _AddComponent {
  const _$_AddComponent({required this.component});

  @override
  final Component component;

  @override
  String toString() {
    return 'NotePadEvent.addComponent(component: $component)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AddComponent &&
            const DeepCollectionEquality().equals(other.component, component));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(component));

  @JsonKey(ignore: true)
  @override
  _$AddComponentCopyWith<_AddComponent> get copyWith =>
      __$AddComponentCopyWithImpl<_AddComponent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NotePage notePage) fetchStarted,
    required TResult Function(Component component) addComponent,
    required TResult Function(Component component) updateComponent,
    required TResult Function(Component component) removeComponent,
    required TResult Function(Component component) componentSelected,
    required TResult Function(int? index) createEmptyComponent,
  }) {
    return addComponent(component);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(NotePage notePage)? fetchStarted,
    TResult Function(Component component)? addComponent,
    TResult Function(Component component)? updateComponent,
    TResult Function(Component component)? removeComponent,
    TResult Function(Component component)? componentSelected,
    TResult Function(int? index)? createEmptyComponent,
  }) {
    return addComponent?.call(component);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NotePage notePage)? fetchStarted,
    TResult Function(Component component)? addComponent,
    TResult Function(Component component)? updateComponent,
    TResult Function(Component component)? removeComponent,
    TResult Function(Component component)? componentSelected,
    TResult Function(int? index)? createEmptyComponent,
    required TResult orElse(),
  }) {
    if (addComponent != null) {
      return addComponent(component);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchStarted value) fetchStarted,
    required TResult Function(_AddComponent value) addComponent,
    required TResult Function(_UpdateComponent value) updateComponent,
    required TResult Function(_RemoveComponent value) removeComponent,
    required TResult Function(_ComponentSelected value) componentSelected,
    required TResult Function(_CreateEmptyComponent value) createEmptyComponent,
  }) {
    return addComponent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchStarted value)? fetchStarted,
    TResult Function(_AddComponent value)? addComponent,
    TResult Function(_UpdateComponent value)? updateComponent,
    TResult Function(_RemoveComponent value)? removeComponent,
    TResult Function(_ComponentSelected value)? componentSelected,
    TResult Function(_CreateEmptyComponent value)? createEmptyComponent,
  }) {
    return addComponent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchStarted value)? fetchStarted,
    TResult Function(_AddComponent value)? addComponent,
    TResult Function(_UpdateComponent value)? updateComponent,
    TResult Function(_RemoveComponent value)? removeComponent,
    TResult Function(_ComponentSelected value)? componentSelected,
    TResult Function(_CreateEmptyComponent value)? createEmptyComponent,
    required TResult orElse(),
  }) {
    if (addComponent != null) {
      return addComponent(this);
    }
    return orElse();
  }
}

abstract class _AddComponent implements NotePadEvent {
  const factory _AddComponent({required Component component}) = _$_AddComponent;

  Component get component;
  @JsonKey(ignore: true)
  _$AddComponentCopyWith<_AddComponent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UpdateComponentCopyWith<$Res> {
  factory _$UpdateComponentCopyWith(
          _UpdateComponent value, $Res Function(_UpdateComponent) then) =
      __$UpdateComponentCopyWithImpl<$Res>;
  $Res call({Component component});

  $ComponentCopyWith<$Res> get component;
}

/// @nodoc
class __$UpdateComponentCopyWithImpl<$Res>
    extends _$NotePadEventCopyWithImpl<$Res>
    implements _$UpdateComponentCopyWith<$Res> {
  __$UpdateComponentCopyWithImpl(
      _UpdateComponent _value, $Res Function(_UpdateComponent) _then)
      : super(_value, (v) => _then(v as _UpdateComponent));

  @override
  _UpdateComponent get _value => super._value as _UpdateComponent;

  @override
  $Res call({
    Object? component = freezed,
  }) {
    return _then(_UpdateComponent(
      component: component == freezed
          ? _value.component
          : component // ignore: cast_nullable_to_non_nullable
              as Component,
    ));
  }

  @override
  $ComponentCopyWith<$Res> get component {
    return $ComponentCopyWith<$Res>(_value.component, (value) {
      return _then(_value.copyWith(component: value));
    });
  }
}

/// @nodoc

class _$_UpdateComponent implements _UpdateComponent {
  const _$_UpdateComponent({required this.component});

  @override
  final Component component;

  @override
  String toString() {
    return 'NotePadEvent.updateComponent(component: $component)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateComponent &&
            const DeepCollectionEquality().equals(other.component, component));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(component));

  @JsonKey(ignore: true)
  @override
  _$UpdateComponentCopyWith<_UpdateComponent> get copyWith =>
      __$UpdateComponentCopyWithImpl<_UpdateComponent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NotePage notePage) fetchStarted,
    required TResult Function(Component component) addComponent,
    required TResult Function(Component component) updateComponent,
    required TResult Function(Component component) removeComponent,
    required TResult Function(Component component) componentSelected,
    required TResult Function(int? index) createEmptyComponent,
  }) {
    return updateComponent(component);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(NotePage notePage)? fetchStarted,
    TResult Function(Component component)? addComponent,
    TResult Function(Component component)? updateComponent,
    TResult Function(Component component)? removeComponent,
    TResult Function(Component component)? componentSelected,
    TResult Function(int? index)? createEmptyComponent,
  }) {
    return updateComponent?.call(component);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NotePage notePage)? fetchStarted,
    TResult Function(Component component)? addComponent,
    TResult Function(Component component)? updateComponent,
    TResult Function(Component component)? removeComponent,
    TResult Function(Component component)? componentSelected,
    TResult Function(int? index)? createEmptyComponent,
    required TResult orElse(),
  }) {
    if (updateComponent != null) {
      return updateComponent(component);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchStarted value) fetchStarted,
    required TResult Function(_AddComponent value) addComponent,
    required TResult Function(_UpdateComponent value) updateComponent,
    required TResult Function(_RemoveComponent value) removeComponent,
    required TResult Function(_ComponentSelected value) componentSelected,
    required TResult Function(_CreateEmptyComponent value) createEmptyComponent,
  }) {
    return updateComponent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchStarted value)? fetchStarted,
    TResult Function(_AddComponent value)? addComponent,
    TResult Function(_UpdateComponent value)? updateComponent,
    TResult Function(_RemoveComponent value)? removeComponent,
    TResult Function(_ComponentSelected value)? componentSelected,
    TResult Function(_CreateEmptyComponent value)? createEmptyComponent,
  }) {
    return updateComponent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchStarted value)? fetchStarted,
    TResult Function(_AddComponent value)? addComponent,
    TResult Function(_UpdateComponent value)? updateComponent,
    TResult Function(_RemoveComponent value)? removeComponent,
    TResult Function(_ComponentSelected value)? componentSelected,
    TResult Function(_CreateEmptyComponent value)? createEmptyComponent,
    required TResult orElse(),
  }) {
    if (updateComponent != null) {
      return updateComponent(this);
    }
    return orElse();
  }
}

abstract class _UpdateComponent implements NotePadEvent {
  const factory _UpdateComponent({required Component component}) =
      _$_UpdateComponent;

  Component get component;
  @JsonKey(ignore: true)
  _$UpdateComponentCopyWith<_UpdateComponent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RemoveComponentCopyWith<$Res> {
  factory _$RemoveComponentCopyWith(
          _RemoveComponent value, $Res Function(_RemoveComponent) then) =
      __$RemoveComponentCopyWithImpl<$Res>;
  $Res call({Component component});

  $ComponentCopyWith<$Res> get component;
}

/// @nodoc
class __$RemoveComponentCopyWithImpl<$Res>
    extends _$NotePadEventCopyWithImpl<$Res>
    implements _$RemoveComponentCopyWith<$Res> {
  __$RemoveComponentCopyWithImpl(
      _RemoveComponent _value, $Res Function(_RemoveComponent) _then)
      : super(_value, (v) => _then(v as _RemoveComponent));

  @override
  _RemoveComponent get _value => super._value as _RemoveComponent;

  @override
  $Res call({
    Object? component = freezed,
  }) {
    return _then(_RemoveComponent(
      component: component == freezed
          ? _value.component
          : component // ignore: cast_nullable_to_non_nullable
              as Component,
    ));
  }

  @override
  $ComponentCopyWith<$Res> get component {
    return $ComponentCopyWith<$Res>(_value.component, (value) {
      return _then(_value.copyWith(component: value));
    });
  }
}

/// @nodoc

class _$_RemoveComponent implements _RemoveComponent {
  const _$_RemoveComponent({required this.component});

  @override
  final Component component;

  @override
  String toString() {
    return 'NotePadEvent.removeComponent(component: $component)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RemoveComponent &&
            const DeepCollectionEquality().equals(other.component, component));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(component));

  @JsonKey(ignore: true)
  @override
  _$RemoveComponentCopyWith<_RemoveComponent> get copyWith =>
      __$RemoveComponentCopyWithImpl<_RemoveComponent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NotePage notePage) fetchStarted,
    required TResult Function(Component component) addComponent,
    required TResult Function(Component component) updateComponent,
    required TResult Function(Component component) removeComponent,
    required TResult Function(Component component) componentSelected,
    required TResult Function(int? index) createEmptyComponent,
  }) {
    return removeComponent(component);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(NotePage notePage)? fetchStarted,
    TResult Function(Component component)? addComponent,
    TResult Function(Component component)? updateComponent,
    TResult Function(Component component)? removeComponent,
    TResult Function(Component component)? componentSelected,
    TResult Function(int? index)? createEmptyComponent,
  }) {
    return removeComponent?.call(component);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NotePage notePage)? fetchStarted,
    TResult Function(Component component)? addComponent,
    TResult Function(Component component)? updateComponent,
    TResult Function(Component component)? removeComponent,
    TResult Function(Component component)? componentSelected,
    TResult Function(int? index)? createEmptyComponent,
    required TResult orElse(),
  }) {
    if (removeComponent != null) {
      return removeComponent(component);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchStarted value) fetchStarted,
    required TResult Function(_AddComponent value) addComponent,
    required TResult Function(_UpdateComponent value) updateComponent,
    required TResult Function(_RemoveComponent value) removeComponent,
    required TResult Function(_ComponentSelected value) componentSelected,
    required TResult Function(_CreateEmptyComponent value) createEmptyComponent,
  }) {
    return removeComponent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchStarted value)? fetchStarted,
    TResult Function(_AddComponent value)? addComponent,
    TResult Function(_UpdateComponent value)? updateComponent,
    TResult Function(_RemoveComponent value)? removeComponent,
    TResult Function(_ComponentSelected value)? componentSelected,
    TResult Function(_CreateEmptyComponent value)? createEmptyComponent,
  }) {
    return removeComponent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchStarted value)? fetchStarted,
    TResult Function(_AddComponent value)? addComponent,
    TResult Function(_UpdateComponent value)? updateComponent,
    TResult Function(_RemoveComponent value)? removeComponent,
    TResult Function(_ComponentSelected value)? componentSelected,
    TResult Function(_CreateEmptyComponent value)? createEmptyComponent,
    required TResult orElse(),
  }) {
    if (removeComponent != null) {
      return removeComponent(this);
    }
    return orElse();
  }
}

abstract class _RemoveComponent implements NotePadEvent {
  const factory _RemoveComponent({required Component component}) =
      _$_RemoveComponent;

  Component get component;
  @JsonKey(ignore: true)
  _$RemoveComponentCopyWith<_RemoveComponent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ComponentSelectedCopyWith<$Res> {
  factory _$ComponentSelectedCopyWith(
          _ComponentSelected value, $Res Function(_ComponentSelected) then) =
      __$ComponentSelectedCopyWithImpl<$Res>;
  $Res call({Component component});

  $ComponentCopyWith<$Res> get component;
}

/// @nodoc
class __$ComponentSelectedCopyWithImpl<$Res>
    extends _$NotePadEventCopyWithImpl<$Res>
    implements _$ComponentSelectedCopyWith<$Res> {
  __$ComponentSelectedCopyWithImpl(
      _ComponentSelected _value, $Res Function(_ComponentSelected) _then)
      : super(_value, (v) => _then(v as _ComponentSelected));

  @override
  _ComponentSelected get _value => super._value as _ComponentSelected;

  @override
  $Res call({
    Object? component = freezed,
  }) {
    return _then(_ComponentSelected(
      component: component == freezed
          ? _value.component
          : component // ignore: cast_nullable_to_non_nullable
              as Component,
    ));
  }

  @override
  $ComponentCopyWith<$Res> get component {
    return $ComponentCopyWith<$Res>(_value.component, (value) {
      return _then(_value.copyWith(component: value));
    });
  }
}

/// @nodoc

class _$_ComponentSelected implements _ComponentSelected {
  const _$_ComponentSelected({required this.component});

  @override
  final Component component;

  @override
  String toString() {
    return 'NotePadEvent.componentSelected(component: $component)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ComponentSelected &&
            const DeepCollectionEquality().equals(other.component, component));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(component));

  @JsonKey(ignore: true)
  @override
  _$ComponentSelectedCopyWith<_ComponentSelected> get copyWith =>
      __$ComponentSelectedCopyWithImpl<_ComponentSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NotePage notePage) fetchStarted,
    required TResult Function(Component component) addComponent,
    required TResult Function(Component component) updateComponent,
    required TResult Function(Component component) removeComponent,
    required TResult Function(Component component) componentSelected,
    required TResult Function(int? index) createEmptyComponent,
  }) {
    return componentSelected(component);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(NotePage notePage)? fetchStarted,
    TResult Function(Component component)? addComponent,
    TResult Function(Component component)? updateComponent,
    TResult Function(Component component)? removeComponent,
    TResult Function(Component component)? componentSelected,
    TResult Function(int? index)? createEmptyComponent,
  }) {
    return componentSelected?.call(component);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NotePage notePage)? fetchStarted,
    TResult Function(Component component)? addComponent,
    TResult Function(Component component)? updateComponent,
    TResult Function(Component component)? removeComponent,
    TResult Function(Component component)? componentSelected,
    TResult Function(int? index)? createEmptyComponent,
    required TResult orElse(),
  }) {
    if (componentSelected != null) {
      return componentSelected(component);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchStarted value) fetchStarted,
    required TResult Function(_AddComponent value) addComponent,
    required TResult Function(_UpdateComponent value) updateComponent,
    required TResult Function(_RemoveComponent value) removeComponent,
    required TResult Function(_ComponentSelected value) componentSelected,
    required TResult Function(_CreateEmptyComponent value) createEmptyComponent,
  }) {
    return componentSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchStarted value)? fetchStarted,
    TResult Function(_AddComponent value)? addComponent,
    TResult Function(_UpdateComponent value)? updateComponent,
    TResult Function(_RemoveComponent value)? removeComponent,
    TResult Function(_ComponentSelected value)? componentSelected,
    TResult Function(_CreateEmptyComponent value)? createEmptyComponent,
  }) {
    return componentSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchStarted value)? fetchStarted,
    TResult Function(_AddComponent value)? addComponent,
    TResult Function(_UpdateComponent value)? updateComponent,
    TResult Function(_RemoveComponent value)? removeComponent,
    TResult Function(_ComponentSelected value)? componentSelected,
    TResult Function(_CreateEmptyComponent value)? createEmptyComponent,
    required TResult orElse(),
  }) {
    if (componentSelected != null) {
      return componentSelected(this);
    }
    return orElse();
  }
}

abstract class _ComponentSelected implements NotePadEvent {
  const factory _ComponentSelected({required Component component}) =
      _$_ComponentSelected;

  Component get component;
  @JsonKey(ignore: true)
  _$ComponentSelectedCopyWith<_ComponentSelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CreateEmptyComponentCopyWith<$Res> {
  factory _$CreateEmptyComponentCopyWith(_CreateEmptyComponent value,
          $Res Function(_CreateEmptyComponent) then) =
      __$CreateEmptyComponentCopyWithImpl<$Res>;
  $Res call({int? index});
}

/// @nodoc
class __$CreateEmptyComponentCopyWithImpl<$Res>
    extends _$NotePadEventCopyWithImpl<$Res>
    implements _$CreateEmptyComponentCopyWith<$Res> {
  __$CreateEmptyComponentCopyWithImpl(
      _CreateEmptyComponent _value, $Res Function(_CreateEmptyComponent) _then)
      : super(_value, (v) => _then(v as _CreateEmptyComponent));

  @override
  _CreateEmptyComponent get _value => super._value as _CreateEmptyComponent;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(_CreateEmptyComponent(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_CreateEmptyComponent implements _CreateEmptyComponent {
  const _$_CreateEmptyComponent({this.index});

  @override
  final int? index;

  @override
  String toString() {
    return 'NotePadEvent.createEmptyComponent(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateEmptyComponent &&
            const DeepCollectionEquality().equals(other.index, index));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(index));

  @JsonKey(ignore: true)
  @override
  _$CreateEmptyComponentCopyWith<_CreateEmptyComponent> get copyWith =>
      __$CreateEmptyComponentCopyWithImpl<_CreateEmptyComponent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NotePage notePage) fetchStarted,
    required TResult Function(Component component) addComponent,
    required TResult Function(Component component) updateComponent,
    required TResult Function(Component component) removeComponent,
    required TResult Function(Component component) componentSelected,
    required TResult Function(int? index) createEmptyComponent,
  }) {
    return createEmptyComponent(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(NotePage notePage)? fetchStarted,
    TResult Function(Component component)? addComponent,
    TResult Function(Component component)? updateComponent,
    TResult Function(Component component)? removeComponent,
    TResult Function(Component component)? componentSelected,
    TResult Function(int? index)? createEmptyComponent,
  }) {
    return createEmptyComponent?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NotePage notePage)? fetchStarted,
    TResult Function(Component component)? addComponent,
    TResult Function(Component component)? updateComponent,
    TResult Function(Component component)? removeComponent,
    TResult Function(Component component)? componentSelected,
    TResult Function(int? index)? createEmptyComponent,
    required TResult orElse(),
  }) {
    if (createEmptyComponent != null) {
      return createEmptyComponent(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchStarted value) fetchStarted,
    required TResult Function(_AddComponent value) addComponent,
    required TResult Function(_UpdateComponent value) updateComponent,
    required TResult Function(_RemoveComponent value) removeComponent,
    required TResult Function(_ComponentSelected value) componentSelected,
    required TResult Function(_CreateEmptyComponent value) createEmptyComponent,
  }) {
    return createEmptyComponent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchStarted value)? fetchStarted,
    TResult Function(_AddComponent value)? addComponent,
    TResult Function(_UpdateComponent value)? updateComponent,
    TResult Function(_RemoveComponent value)? removeComponent,
    TResult Function(_ComponentSelected value)? componentSelected,
    TResult Function(_CreateEmptyComponent value)? createEmptyComponent,
  }) {
    return createEmptyComponent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchStarted value)? fetchStarted,
    TResult Function(_AddComponent value)? addComponent,
    TResult Function(_UpdateComponent value)? updateComponent,
    TResult Function(_RemoveComponent value)? removeComponent,
    TResult Function(_ComponentSelected value)? componentSelected,
    TResult Function(_CreateEmptyComponent value)? createEmptyComponent,
    required TResult orElse(),
  }) {
    if (createEmptyComponent != null) {
      return createEmptyComponent(this);
    }
    return orElse();
  }
}

abstract class _CreateEmptyComponent implements NotePadEvent {
  const factory _CreateEmptyComponent({int? index}) = _$_CreateEmptyComponent;

  int? get index;
  @JsonKey(ignore: true)
  _$CreateEmptyComponentCopyWith<_CreateEmptyComponent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$NotePadStateTearOff {
  const _$NotePadStateTearOff();

  _NotePadState call(
      {required NotePage notePage,
      Component? componentSelected,
      List<Component> components = const [],
      NotePadStatus status = const NotePadInitial()}) {
    return _NotePadState(
      notePage: notePage,
      componentSelected: componentSelected,
      components: components,
      status: status,
    );
  }
}

/// @nodoc
const $NotePadState = _$NotePadStateTearOff();

/// @nodoc
mixin _$NotePadState {
  NotePage get notePage => throw _privateConstructorUsedError;
  Component? get componentSelected => throw _privateConstructorUsedError;
  List<Component> get components => throw _privateConstructorUsedError;
  NotePadStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NotePadStateCopyWith<NotePadState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotePadStateCopyWith<$Res> {
  factory $NotePadStateCopyWith(
          NotePadState value, $Res Function(NotePadState) then) =
      _$NotePadStateCopyWithImpl<$Res>;
  $Res call(
      {NotePage notePage,
      Component? componentSelected,
      List<Component> components,
      NotePadStatus status});

  $NotePageCopyWith<$Res> get notePage;
  $ComponentCopyWith<$Res>? get componentSelected;
  $NotePadStatusCopyWith<$Res> get status;
}

/// @nodoc
class _$NotePadStateCopyWithImpl<$Res> implements $NotePadStateCopyWith<$Res> {
  _$NotePadStateCopyWithImpl(this._value, this._then);

  final NotePadState _value;
  // ignore: unused_field
  final $Res Function(NotePadState) _then;

  @override
  $Res call({
    Object? notePage = freezed,
    Object? componentSelected = freezed,
    Object? components = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      notePage: notePage == freezed
          ? _value.notePage
          : notePage // ignore: cast_nullable_to_non_nullable
              as NotePage,
      componentSelected: componentSelected == freezed
          ? _value.componentSelected
          : componentSelected // ignore: cast_nullable_to_non_nullable
              as Component?,
      components: components == freezed
          ? _value.components
          : components // ignore: cast_nullable_to_non_nullable
              as List<Component>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as NotePadStatus,
    ));
  }

  @override
  $NotePageCopyWith<$Res> get notePage {
    return $NotePageCopyWith<$Res>(_value.notePage, (value) {
      return _then(_value.copyWith(notePage: value));
    });
  }

  @override
  $ComponentCopyWith<$Res>? get componentSelected {
    if (_value.componentSelected == null) {
      return null;
    }

    return $ComponentCopyWith<$Res>(_value.componentSelected!, (value) {
      return _then(_value.copyWith(componentSelected: value));
    });
  }

  @override
  $NotePadStatusCopyWith<$Res> get status {
    return $NotePadStatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value));
    });
  }
}

/// @nodoc
abstract class _$NotePadStateCopyWith<$Res>
    implements $NotePadStateCopyWith<$Res> {
  factory _$NotePadStateCopyWith(
          _NotePadState value, $Res Function(_NotePadState) then) =
      __$NotePadStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {NotePage notePage,
      Component? componentSelected,
      List<Component> components,
      NotePadStatus status});

  @override
  $NotePageCopyWith<$Res> get notePage;
  @override
  $ComponentCopyWith<$Res>? get componentSelected;
  @override
  $NotePadStatusCopyWith<$Res> get status;
}

/// @nodoc
class __$NotePadStateCopyWithImpl<$Res> extends _$NotePadStateCopyWithImpl<$Res>
    implements _$NotePadStateCopyWith<$Res> {
  __$NotePadStateCopyWithImpl(
      _NotePadState _value, $Res Function(_NotePadState) _then)
      : super(_value, (v) => _then(v as _NotePadState));

  @override
  _NotePadState get _value => super._value as _NotePadState;

  @override
  $Res call({
    Object? notePage = freezed,
    Object? componentSelected = freezed,
    Object? components = freezed,
    Object? status = freezed,
  }) {
    return _then(_NotePadState(
      notePage: notePage == freezed
          ? _value.notePage
          : notePage // ignore: cast_nullable_to_non_nullable
              as NotePage,
      componentSelected: componentSelected == freezed
          ? _value.componentSelected
          : componentSelected // ignore: cast_nullable_to_non_nullable
              as Component?,
      components: components == freezed
          ? _value.components
          : components // ignore: cast_nullable_to_non_nullable
              as List<Component>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as NotePadStatus,
    ));
  }
}

/// @nodoc

class _$_NotePadState implements _NotePadState {
  const _$_NotePadState(
      {required this.notePage,
      this.componentSelected,
      this.components = const [],
      this.status = const NotePadInitial()});

  @override
  final NotePage notePage;
  @override
  final Component? componentSelected;
  @JsonKey()
  @override
  final List<Component> components;
  @JsonKey()
  @override
  final NotePadStatus status;

  @override
  String toString() {
    return 'NotePadState(notePage: $notePage, componentSelected: $componentSelected, components: $components, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NotePadState &&
            const DeepCollectionEquality().equals(other.notePage, notePage) &&
            const DeepCollectionEquality()
                .equals(other.componentSelected, componentSelected) &&
            const DeepCollectionEquality()
                .equals(other.components, components) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(notePage),
      const DeepCollectionEquality().hash(componentSelected),
      const DeepCollectionEquality().hash(components),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$NotePadStateCopyWith<_NotePadState> get copyWith =>
      __$NotePadStateCopyWithImpl<_NotePadState>(this, _$identity);
}

abstract class _NotePadState implements NotePadState {
  const factory _NotePadState(
      {required NotePage notePage,
      Component? componentSelected,
      List<Component> components,
      NotePadStatus status}) = _$_NotePadState;

  @override
  NotePage get notePage;
  @override
  Component? get componentSelected;
  @override
  List<Component> get components;
  @override
  NotePadStatus get status;
  @override
  @JsonKey(ignore: true)
  _$NotePadStateCopyWith<_NotePadState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$NotePadStatusTearOff {
  const _$NotePadStatusTearOff();

  NotePadInitial initial() {
    return const NotePadInitial();
  }

  NotePadFetchInProgress fetchInProgress() {
    return const NotePadFetchInProgress();
  }

  NotePadSuccess success() {
    return const NotePadSuccess();
  }

  NotePadError error() {
    return const NotePadError();
  }
}

/// @nodoc
const $NotePadStatus = _$NotePadStatusTearOff();

/// @nodoc
mixin _$NotePadStatus {
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
    required TResult Function(NotePadInitial value) initial,
    required TResult Function(NotePadFetchInProgress value) fetchInProgress,
    required TResult Function(NotePadSuccess value) success,
    required TResult Function(NotePadError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NotePadInitial value)? initial,
    TResult Function(NotePadFetchInProgress value)? fetchInProgress,
    TResult Function(NotePadSuccess value)? success,
    TResult Function(NotePadError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotePadInitial value)? initial,
    TResult Function(NotePadFetchInProgress value)? fetchInProgress,
    TResult Function(NotePadSuccess value)? success,
    TResult Function(NotePadError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotePadStatusCopyWith<$Res> {
  factory $NotePadStatusCopyWith(
          NotePadStatus value, $Res Function(NotePadStatus) then) =
      _$NotePadStatusCopyWithImpl<$Res>;
}

/// @nodoc
class _$NotePadStatusCopyWithImpl<$Res>
    implements $NotePadStatusCopyWith<$Res> {
  _$NotePadStatusCopyWithImpl(this._value, this._then);

  final NotePadStatus _value;
  // ignore: unused_field
  final $Res Function(NotePadStatus) _then;
}

/// @nodoc
abstract class $NotePadInitialCopyWith<$Res> {
  factory $NotePadInitialCopyWith(
          NotePadInitial value, $Res Function(NotePadInitial) then) =
      _$NotePadInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$NotePadInitialCopyWithImpl<$Res>
    extends _$NotePadStatusCopyWithImpl<$Res>
    implements $NotePadInitialCopyWith<$Res> {
  _$NotePadInitialCopyWithImpl(
      NotePadInitial _value, $Res Function(NotePadInitial) _then)
      : super(_value, (v) => _then(v as NotePadInitial));

  @override
  NotePadInitial get _value => super._value as NotePadInitial;
}

/// @nodoc

class _$NotePadInitial implements NotePadInitial {
  const _$NotePadInitial();

  @override
  String toString() {
    return 'NotePadStatus.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is NotePadInitial);
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
    required TResult Function(NotePadInitial value) initial,
    required TResult Function(NotePadFetchInProgress value) fetchInProgress,
    required TResult Function(NotePadSuccess value) success,
    required TResult Function(NotePadError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NotePadInitial value)? initial,
    TResult Function(NotePadFetchInProgress value)? fetchInProgress,
    TResult Function(NotePadSuccess value)? success,
    TResult Function(NotePadError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotePadInitial value)? initial,
    TResult Function(NotePadFetchInProgress value)? fetchInProgress,
    TResult Function(NotePadSuccess value)? success,
    TResult Function(NotePadError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class NotePadInitial implements NotePadStatus {
  const factory NotePadInitial() = _$NotePadInitial;
}

/// @nodoc
abstract class $NotePadFetchInProgressCopyWith<$Res> {
  factory $NotePadFetchInProgressCopyWith(NotePadFetchInProgress value,
          $Res Function(NotePadFetchInProgress) then) =
      _$NotePadFetchInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class _$NotePadFetchInProgressCopyWithImpl<$Res>
    extends _$NotePadStatusCopyWithImpl<$Res>
    implements $NotePadFetchInProgressCopyWith<$Res> {
  _$NotePadFetchInProgressCopyWithImpl(NotePadFetchInProgress _value,
      $Res Function(NotePadFetchInProgress) _then)
      : super(_value, (v) => _then(v as NotePadFetchInProgress));

  @override
  NotePadFetchInProgress get _value => super._value as NotePadFetchInProgress;
}

/// @nodoc

class _$NotePadFetchInProgress implements NotePadFetchInProgress {
  const _$NotePadFetchInProgress();

  @override
  String toString() {
    return 'NotePadStatus.fetchInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is NotePadFetchInProgress);
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
    required TResult Function(NotePadInitial value) initial,
    required TResult Function(NotePadFetchInProgress value) fetchInProgress,
    required TResult Function(NotePadSuccess value) success,
    required TResult Function(NotePadError value) error,
  }) {
    return fetchInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NotePadInitial value)? initial,
    TResult Function(NotePadFetchInProgress value)? fetchInProgress,
    TResult Function(NotePadSuccess value)? success,
    TResult Function(NotePadError value)? error,
  }) {
    return fetchInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotePadInitial value)? initial,
    TResult Function(NotePadFetchInProgress value)? fetchInProgress,
    TResult Function(NotePadSuccess value)? success,
    TResult Function(NotePadError value)? error,
    required TResult orElse(),
  }) {
    if (fetchInProgress != null) {
      return fetchInProgress(this);
    }
    return orElse();
  }
}

abstract class NotePadFetchInProgress implements NotePadStatus {
  const factory NotePadFetchInProgress() = _$NotePadFetchInProgress;
}

/// @nodoc
abstract class $NotePadSuccessCopyWith<$Res> {
  factory $NotePadSuccessCopyWith(
          NotePadSuccess value, $Res Function(NotePadSuccess) then) =
      _$NotePadSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class _$NotePadSuccessCopyWithImpl<$Res>
    extends _$NotePadStatusCopyWithImpl<$Res>
    implements $NotePadSuccessCopyWith<$Res> {
  _$NotePadSuccessCopyWithImpl(
      NotePadSuccess _value, $Res Function(NotePadSuccess) _then)
      : super(_value, (v) => _then(v as NotePadSuccess));

  @override
  NotePadSuccess get _value => super._value as NotePadSuccess;
}

/// @nodoc

class _$NotePadSuccess implements NotePadSuccess {
  const _$NotePadSuccess();

  @override
  String toString() {
    return 'NotePadStatus.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is NotePadSuccess);
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
    required TResult Function(NotePadInitial value) initial,
    required TResult Function(NotePadFetchInProgress value) fetchInProgress,
    required TResult Function(NotePadSuccess value) success,
    required TResult Function(NotePadError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NotePadInitial value)? initial,
    TResult Function(NotePadFetchInProgress value)? fetchInProgress,
    TResult Function(NotePadSuccess value)? success,
    TResult Function(NotePadError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotePadInitial value)? initial,
    TResult Function(NotePadFetchInProgress value)? fetchInProgress,
    TResult Function(NotePadSuccess value)? success,
    TResult Function(NotePadError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class NotePadSuccess implements NotePadStatus {
  const factory NotePadSuccess() = _$NotePadSuccess;
}

/// @nodoc
abstract class $NotePadErrorCopyWith<$Res> {
  factory $NotePadErrorCopyWith(
          NotePadError value, $Res Function(NotePadError) then) =
      _$NotePadErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$NotePadErrorCopyWithImpl<$Res> extends _$NotePadStatusCopyWithImpl<$Res>
    implements $NotePadErrorCopyWith<$Res> {
  _$NotePadErrorCopyWithImpl(
      NotePadError _value, $Res Function(NotePadError) _then)
      : super(_value, (v) => _then(v as NotePadError));

  @override
  NotePadError get _value => super._value as NotePadError;
}

/// @nodoc

class _$NotePadError implements NotePadError {
  const _$NotePadError();

  @override
  String toString() {
    return 'NotePadStatus.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is NotePadError);
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
    required TResult Function(NotePadInitial value) initial,
    required TResult Function(NotePadFetchInProgress value) fetchInProgress,
    required TResult Function(NotePadSuccess value) success,
    required TResult Function(NotePadError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NotePadInitial value)? initial,
    TResult Function(NotePadFetchInProgress value)? fetchInProgress,
    TResult Function(NotePadSuccess value)? success,
    TResult Function(NotePadError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotePadInitial value)? initial,
    TResult Function(NotePadFetchInProgress value)? fetchInProgress,
    TResult Function(NotePadSuccess value)? success,
    TResult Function(NotePadError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class NotePadError implements NotePadStatus {
  const factory NotePadError() = _$NotePadError;
}
