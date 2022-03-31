// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'note_page.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NotePageTearOff {
  const _$NotePageTearOff();

  _NotePage call(
      {required String id,
      required int index,
      required String title,
      String? parentId}) {
    return _NotePage(
      id: id,
      index: index,
      title: title,
      parentId: parentId,
    );
  }
}

/// @nodoc
const $NotePage = _$NotePageTearOff();

/// @nodoc
mixin _$NotePage {
  String get id => throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get parentId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NotePageCopyWith<NotePage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotePageCopyWith<$Res> {
  factory $NotePageCopyWith(NotePage value, $Res Function(NotePage) then) =
      _$NotePageCopyWithImpl<$Res>;
  $Res call({String id, int index, String title, String? parentId});
}

/// @nodoc
class _$NotePageCopyWithImpl<$Res> implements $NotePageCopyWith<$Res> {
  _$NotePageCopyWithImpl(this._value, this._then);

  final NotePage _value;
  // ignore: unused_field
  final $Res Function(NotePage) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? index = freezed,
    Object? title = freezed,
    Object? parentId = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      parentId: parentId == freezed
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$NotePageCopyWith<$Res> implements $NotePageCopyWith<$Res> {
  factory _$NotePageCopyWith(_NotePage value, $Res Function(_NotePage) then) =
      __$NotePageCopyWithImpl<$Res>;
  @override
  $Res call({String id, int index, String title, String? parentId});
}

/// @nodoc
class __$NotePageCopyWithImpl<$Res> extends _$NotePageCopyWithImpl<$Res>
    implements _$NotePageCopyWith<$Res> {
  __$NotePageCopyWithImpl(_NotePage _value, $Res Function(_NotePage) _then)
      : super(_value, (v) => _then(v as _NotePage));

  @override
  _NotePage get _value => super._value as _NotePage;

  @override
  $Res call({
    Object? id = freezed,
    Object? index = freezed,
    Object? title = freezed,
    Object? parentId = freezed,
  }) {
    return _then(_NotePage(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      parentId: parentId == freezed
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_NotePage with DiagnosticableTreeMixin implements _NotePage {
  const _$_NotePage(
      {required this.id,
      required this.index,
      required this.title,
      this.parentId});

  @override
  final String id;
  @override
  final int index;
  @override
  final String title;
  @override
  final String? parentId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NotePage(id: $id, index: $index, title: $title, parentId: $parentId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NotePage'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('index', index))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('parentId', parentId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NotePage &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.index, index) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.parentId, parentId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(index),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(parentId));

  @JsonKey(ignore: true)
  @override
  _$NotePageCopyWith<_NotePage> get copyWith =>
      __$NotePageCopyWithImpl<_NotePage>(this, _$identity);
}

abstract class _NotePage implements NotePage {
  const factory _NotePage(
      {required String id,
      required int index,
      required String title,
      String? parentId}) = _$_NotePage;

  @override
  String get id;
  @override
  int get index;
  @override
  String get title;
  @override
  String? get parentId;
  @override
  @JsonKey(ignore: true)
  _$NotePageCopyWith<_NotePage> get copyWith =>
      throw _privateConstructorUsedError;
}
