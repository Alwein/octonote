// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'component.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Component _$ComponentFromJson(Map<String, dynamic> json) {
  return _Component.fromJson(json);
}

/// @nodoc
class _$ComponentTearOff {
  const _$ComponentTearOff();

  _Component call(
      {required String id,
      required String pageId,
      required int index,
      required ComponentContent content}) {
    return _Component(
      id: id,
      pageId: pageId,
      index: index,
      content: content,
    );
  }

  Component fromJson(Map<String, Object?> json) {
    return Component.fromJson(json);
  }
}

/// @nodoc
const $Component = _$ComponentTearOff();

/// @nodoc
mixin _$Component {
  String get id => throw _privateConstructorUsedError;
  String get pageId => throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError;
  ComponentContent get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ComponentCopyWith<Component> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComponentCopyWith<$Res> {
  factory $ComponentCopyWith(Component value, $Res Function(Component) then) =
      _$ComponentCopyWithImpl<$Res>;
  $Res call({String id, String pageId, int index, ComponentContent content});

  $ComponentContentCopyWith<$Res> get content;
}

/// @nodoc
class _$ComponentCopyWithImpl<$Res> implements $ComponentCopyWith<$Res> {
  _$ComponentCopyWithImpl(this._value, this._then);

  final Component _value;
  // ignore: unused_field
  final $Res Function(Component) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? pageId = freezed,
    Object? index = freezed,
    Object? content = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      pageId: pageId == freezed
          ? _value.pageId
          : pageId // ignore: cast_nullable_to_non_nullable
              as String,
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as ComponentContent,
    ));
  }

  @override
  $ComponentContentCopyWith<$Res> get content {
    return $ComponentContentCopyWith<$Res>(_value.content, (value) {
      return _then(_value.copyWith(content: value));
    });
  }
}

/// @nodoc
abstract class _$ComponentCopyWith<$Res> implements $ComponentCopyWith<$Res> {
  factory _$ComponentCopyWith(
          _Component value, $Res Function(_Component) then) =
      __$ComponentCopyWithImpl<$Res>;
  @override
  $Res call({String id, String pageId, int index, ComponentContent content});

  @override
  $ComponentContentCopyWith<$Res> get content;
}

/// @nodoc
class __$ComponentCopyWithImpl<$Res> extends _$ComponentCopyWithImpl<$Res>
    implements _$ComponentCopyWith<$Res> {
  __$ComponentCopyWithImpl(_Component _value, $Res Function(_Component) _then)
      : super(_value, (v) => _then(v as _Component));

  @override
  _Component get _value => super._value as _Component;

  @override
  $Res call({
    Object? id = freezed,
    Object? pageId = freezed,
    Object? index = freezed,
    Object? content = freezed,
  }) {
    return _then(_Component(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      pageId: pageId == freezed
          ? _value.pageId
          : pageId // ignore: cast_nullable_to_non_nullable
              as String,
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as ComponentContent,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Component with DiagnosticableTreeMixin implements _Component {
  const _$_Component(
      {required this.id,
      required this.pageId,
      required this.index,
      required this.content});

  factory _$_Component.fromJson(Map<String, dynamic> json) =>
      _$$_ComponentFromJson(json);

  @override
  final String id;
  @override
  final String pageId;
  @override
  final int index;
  @override
  final ComponentContent content;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Component(id: $id, pageId: $pageId, index: $index, content: $content)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Component'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('pageId', pageId))
      ..add(DiagnosticsProperty('index', index))
      ..add(DiagnosticsProperty('content', content));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Component &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.pageId, pageId) &&
            const DeepCollectionEquality().equals(other.index, index) &&
            const DeepCollectionEquality().equals(other.content, content));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(pageId),
      const DeepCollectionEquality().hash(index),
      const DeepCollectionEquality().hash(content));

  @JsonKey(ignore: true)
  @override
  _$ComponentCopyWith<_Component> get copyWith =>
      __$ComponentCopyWithImpl<_Component>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ComponentToJson(this);
  }
}

abstract class _Component implements Component {
  const factory _Component(
      {required String id,
      required String pageId,
      required int index,
      required ComponentContent content}) = _$_Component;

  factory _Component.fromJson(Map<String, dynamic> json) =
      _$_Component.fromJson;

  @override
  String get id;
  @override
  String get pageId;
  @override
  int get index;
  @override
  ComponentContent get content;
  @override
  @JsonKey(ignore: true)
  _$ComponentCopyWith<_Component> get copyWith =>
      throw _privateConstructorUsedError;
}

ComponentContent _$ComponentContentFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'text':
      return Text.fromJson(json);
    case 'title1':
      return Title1.fromJson(json);
    case 'title2':
      return Title2.fromJson(json);
    case 'title3':
      return Title3.fromJson(json);
    case 'bulletedList':
      return BulletedList.fromJson(json);
    case 'citation':
      return Citation.fromJson(json);
    case 'todo':
      return Todo.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'ComponentContent',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
class _$ComponentContentTearOff {
  const _$ComponentContentTearOff();

  Text text({required String text}) {
    return Text(
      text: text,
    );
  }

  Title1 title1({required String text}) {
    return Title1(
      text: text,
    );
  }

  Title2 title2({required String text}) {
    return Title2(
      text: text,
    );
  }

  Title3 title3({required String text}) {
    return Title3(
      text: text,
    );
  }

  BulletedList bulletedList({required String text}) {
    return BulletedList(
      text: text,
    );
  }

  Citation citation({required String text}) {
    return Citation(
      text: text,
    );
  }

  Todo todo({required String text, bool value = false}) {
    return Todo(
      text: text,
      value: value,
    );
  }

  ComponentContent fromJson(Map<String, Object?> json) {
    return ComponentContent.fromJson(json);
  }
}

/// @nodoc
const $ComponentContent = _$ComponentContentTearOff();

/// @nodoc
mixin _$ComponentContent {
  String get text => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) text,
    required TResult Function(String text) title1,
    required TResult Function(String text) title2,
    required TResult Function(String text) title3,
    required TResult Function(String text) bulletedList,
    required TResult Function(String text) citation,
    required TResult Function(String text, bool value) todo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text)? text,
    TResult Function(String text)? title1,
    TResult Function(String text)? title2,
    TResult Function(String text)? title3,
    TResult Function(String text)? bulletedList,
    TResult Function(String text)? citation,
    TResult Function(String text, bool value)? todo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? text,
    TResult Function(String text)? title1,
    TResult Function(String text)? title2,
    TResult Function(String text)? title3,
    TResult Function(String text)? bulletedList,
    TResult Function(String text)? citation,
    TResult Function(String text, bool value)? todo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Text value) text,
    required TResult Function(Title1 value) title1,
    required TResult Function(Title2 value) title2,
    required TResult Function(Title3 value) title3,
    required TResult Function(BulletedList value) bulletedList,
    required TResult Function(Citation value) citation,
    required TResult Function(Todo value) todo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Text value)? text,
    TResult Function(Title1 value)? title1,
    TResult Function(Title2 value)? title2,
    TResult Function(Title3 value)? title3,
    TResult Function(BulletedList value)? bulletedList,
    TResult Function(Citation value)? citation,
    TResult Function(Todo value)? todo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Text value)? text,
    TResult Function(Title1 value)? title1,
    TResult Function(Title2 value)? title2,
    TResult Function(Title3 value)? title3,
    TResult Function(BulletedList value)? bulletedList,
    TResult Function(Citation value)? citation,
    TResult Function(Todo value)? todo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ComponentContentCopyWith<ComponentContent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComponentContentCopyWith<$Res> {
  factory $ComponentContentCopyWith(
          ComponentContent value, $Res Function(ComponentContent) then) =
      _$ComponentContentCopyWithImpl<$Res>;
  $Res call({String text});
}

/// @nodoc
class _$ComponentContentCopyWithImpl<$Res>
    implements $ComponentContentCopyWith<$Res> {
  _$ComponentContentCopyWithImpl(this._value, this._then);

  final ComponentContent _value;
  // ignore: unused_field
  final $Res Function(ComponentContent) _then;

  @override
  $Res call({
    Object? text = freezed,
  }) {
    return _then(_value.copyWith(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $TextCopyWith<$Res> implements $ComponentContentCopyWith<$Res> {
  factory $TextCopyWith(Text value, $Res Function(Text) then) =
      _$TextCopyWithImpl<$Res>;
  @override
  $Res call({String text});
}

/// @nodoc
class _$TextCopyWithImpl<$Res> extends _$ComponentContentCopyWithImpl<$Res>
    implements $TextCopyWith<$Res> {
  _$TextCopyWithImpl(Text _value, $Res Function(Text) _then)
      : super(_value, (v) => _then(v as Text));

  @override
  Text get _value => super._value as Text;

  @override
  $Res call({
    Object? text = freezed,
  }) {
    return _then(Text(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Text with DiagnosticableTreeMixin implements Text {
  const _$Text({required this.text, String? $type}) : $type = $type ?? 'text';

  factory _$Text.fromJson(Map<String, dynamic> json) => _$$TextFromJson(json);

  @override
  final String text;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ComponentContent.text(text: $text)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ComponentContent.text'))
      ..add(DiagnosticsProperty('text', text));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Text &&
            const DeepCollectionEquality().equals(other.text, text));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(text));

  @JsonKey(ignore: true)
  @override
  $TextCopyWith<Text> get copyWith =>
      _$TextCopyWithImpl<Text>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) text,
    required TResult Function(String text) title1,
    required TResult Function(String text) title2,
    required TResult Function(String text) title3,
    required TResult Function(String text) bulletedList,
    required TResult Function(String text) citation,
    required TResult Function(String text, bool value) todo,
  }) {
    return text(this.text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text)? text,
    TResult Function(String text)? title1,
    TResult Function(String text)? title2,
    TResult Function(String text)? title3,
    TResult Function(String text)? bulletedList,
    TResult Function(String text)? citation,
    TResult Function(String text, bool value)? todo,
  }) {
    return text?.call(this.text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? text,
    TResult Function(String text)? title1,
    TResult Function(String text)? title2,
    TResult Function(String text)? title3,
    TResult Function(String text)? bulletedList,
    TResult Function(String text)? citation,
    TResult Function(String text, bool value)? todo,
    required TResult orElse(),
  }) {
    if (text != null) {
      return text(this.text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Text value) text,
    required TResult Function(Title1 value) title1,
    required TResult Function(Title2 value) title2,
    required TResult Function(Title3 value) title3,
    required TResult Function(BulletedList value) bulletedList,
    required TResult Function(Citation value) citation,
    required TResult Function(Todo value) todo,
  }) {
    return text(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Text value)? text,
    TResult Function(Title1 value)? title1,
    TResult Function(Title2 value)? title2,
    TResult Function(Title3 value)? title3,
    TResult Function(BulletedList value)? bulletedList,
    TResult Function(Citation value)? citation,
    TResult Function(Todo value)? todo,
  }) {
    return text?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Text value)? text,
    TResult Function(Title1 value)? title1,
    TResult Function(Title2 value)? title2,
    TResult Function(Title3 value)? title3,
    TResult Function(BulletedList value)? bulletedList,
    TResult Function(Citation value)? citation,
    TResult Function(Todo value)? todo,
    required TResult orElse(),
  }) {
    if (text != null) {
      return text(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TextToJson(this);
  }
}

abstract class Text implements ComponentContent {
  const factory Text({required String text}) = _$Text;

  factory Text.fromJson(Map<String, dynamic> json) = _$Text.fromJson;

  @override
  String get text;
  @override
  @JsonKey(ignore: true)
  $TextCopyWith<Text> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Title1CopyWith<$Res>
    implements $ComponentContentCopyWith<$Res> {
  factory $Title1CopyWith(Title1 value, $Res Function(Title1) then) =
      _$Title1CopyWithImpl<$Res>;
  @override
  $Res call({String text});
}

/// @nodoc
class _$Title1CopyWithImpl<$Res> extends _$ComponentContentCopyWithImpl<$Res>
    implements $Title1CopyWith<$Res> {
  _$Title1CopyWithImpl(Title1 _value, $Res Function(Title1) _then)
      : super(_value, (v) => _then(v as Title1));

  @override
  Title1 get _value => super._value as Title1;

  @override
  $Res call({
    Object? text = freezed,
  }) {
    return _then(Title1(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Title1 with DiagnosticableTreeMixin implements Title1 {
  const _$Title1({required this.text, String? $type})
      : $type = $type ?? 'title1';

  factory _$Title1.fromJson(Map<String, dynamic> json) =>
      _$$Title1FromJson(json);

  @override
  final String text;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ComponentContent.title1(text: $text)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ComponentContent.title1'))
      ..add(DiagnosticsProperty('text', text));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Title1 &&
            const DeepCollectionEquality().equals(other.text, text));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(text));

  @JsonKey(ignore: true)
  @override
  $Title1CopyWith<Title1> get copyWith =>
      _$Title1CopyWithImpl<Title1>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) text,
    required TResult Function(String text) title1,
    required TResult Function(String text) title2,
    required TResult Function(String text) title3,
    required TResult Function(String text) bulletedList,
    required TResult Function(String text) citation,
    required TResult Function(String text, bool value) todo,
  }) {
    return title1(this.text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text)? text,
    TResult Function(String text)? title1,
    TResult Function(String text)? title2,
    TResult Function(String text)? title3,
    TResult Function(String text)? bulletedList,
    TResult Function(String text)? citation,
    TResult Function(String text, bool value)? todo,
  }) {
    return title1?.call(this.text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? text,
    TResult Function(String text)? title1,
    TResult Function(String text)? title2,
    TResult Function(String text)? title3,
    TResult Function(String text)? bulletedList,
    TResult Function(String text)? citation,
    TResult Function(String text, bool value)? todo,
    required TResult orElse(),
  }) {
    if (title1 != null) {
      return title1(this.text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Text value) text,
    required TResult Function(Title1 value) title1,
    required TResult Function(Title2 value) title2,
    required TResult Function(Title3 value) title3,
    required TResult Function(BulletedList value) bulletedList,
    required TResult Function(Citation value) citation,
    required TResult Function(Todo value) todo,
  }) {
    return title1(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Text value)? text,
    TResult Function(Title1 value)? title1,
    TResult Function(Title2 value)? title2,
    TResult Function(Title3 value)? title3,
    TResult Function(BulletedList value)? bulletedList,
    TResult Function(Citation value)? citation,
    TResult Function(Todo value)? todo,
  }) {
    return title1?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Text value)? text,
    TResult Function(Title1 value)? title1,
    TResult Function(Title2 value)? title2,
    TResult Function(Title3 value)? title3,
    TResult Function(BulletedList value)? bulletedList,
    TResult Function(Citation value)? citation,
    TResult Function(Todo value)? todo,
    required TResult orElse(),
  }) {
    if (title1 != null) {
      return title1(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$Title1ToJson(this);
  }
}

abstract class Title1 implements ComponentContent {
  const factory Title1({required String text}) = _$Title1;

  factory Title1.fromJson(Map<String, dynamic> json) = _$Title1.fromJson;

  @override
  String get text;
  @override
  @JsonKey(ignore: true)
  $Title1CopyWith<Title1> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Title2CopyWith<$Res>
    implements $ComponentContentCopyWith<$Res> {
  factory $Title2CopyWith(Title2 value, $Res Function(Title2) then) =
      _$Title2CopyWithImpl<$Res>;
  @override
  $Res call({String text});
}

/// @nodoc
class _$Title2CopyWithImpl<$Res> extends _$ComponentContentCopyWithImpl<$Res>
    implements $Title2CopyWith<$Res> {
  _$Title2CopyWithImpl(Title2 _value, $Res Function(Title2) _then)
      : super(_value, (v) => _then(v as Title2));

  @override
  Title2 get _value => super._value as Title2;

  @override
  $Res call({
    Object? text = freezed,
  }) {
    return _then(Title2(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Title2 with DiagnosticableTreeMixin implements Title2 {
  const _$Title2({required this.text, String? $type})
      : $type = $type ?? 'title2';

  factory _$Title2.fromJson(Map<String, dynamic> json) =>
      _$$Title2FromJson(json);

  @override
  final String text;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ComponentContent.title2(text: $text)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ComponentContent.title2'))
      ..add(DiagnosticsProperty('text', text));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Title2 &&
            const DeepCollectionEquality().equals(other.text, text));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(text));

  @JsonKey(ignore: true)
  @override
  $Title2CopyWith<Title2> get copyWith =>
      _$Title2CopyWithImpl<Title2>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) text,
    required TResult Function(String text) title1,
    required TResult Function(String text) title2,
    required TResult Function(String text) title3,
    required TResult Function(String text) bulletedList,
    required TResult Function(String text) citation,
    required TResult Function(String text, bool value) todo,
  }) {
    return title2(this.text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text)? text,
    TResult Function(String text)? title1,
    TResult Function(String text)? title2,
    TResult Function(String text)? title3,
    TResult Function(String text)? bulletedList,
    TResult Function(String text)? citation,
    TResult Function(String text, bool value)? todo,
  }) {
    return title2?.call(this.text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? text,
    TResult Function(String text)? title1,
    TResult Function(String text)? title2,
    TResult Function(String text)? title3,
    TResult Function(String text)? bulletedList,
    TResult Function(String text)? citation,
    TResult Function(String text, bool value)? todo,
    required TResult orElse(),
  }) {
    if (title2 != null) {
      return title2(this.text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Text value) text,
    required TResult Function(Title1 value) title1,
    required TResult Function(Title2 value) title2,
    required TResult Function(Title3 value) title3,
    required TResult Function(BulletedList value) bulletedList,
    required TResult Function(Citation value) citation,
    required TResult Function(Todo value) todo,
  }) {
    return title2(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Text value)? text,
    TResult Function(Title1 value)? title1,
    TResult Function(Title2 value)? title2,
    TResult Function(Title3 value)? title3,
    TResult Function(BulletedList value)? bulletedList,
    TResult Function(Citation value)? citation,
    TResult Function(Todo value)? todo,
  }) {
    return title2?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Text value)? text,
    TResult Function(Title1 value)? title1,
    TResult Function(Title2 value)? title2,
    TResult Function(Title3 value)? title3,
    TResult Function(BulletedList value)? bulletedList,
    TResult Function(Citation value)? citation,
    TResult Function(Todo value)? todo,
    required TResult orElse(),
  }) {
    if (title2 != null) {
      return title2(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$Title2ToJson(this);
  }
}

abstract class Title2 implements ComponentContent {
  const factory Title2({required String text}) = _$Title2;

  factory Title2.fromJson(Map<String, dynamic> json) = _$Title2.fromJson;

  @override
  String get text;
  @override
  @JsonKey(ignore: true)
  $Title2CopyWith<Title2> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Title3CopyWith<$Res>
    implements $ComponentContentCopyWith<$Res> {
  factory $Title3CopyWith(Title3 value, $Res Function(Title3) then) =
      _$Title3CopyWithImpl<$Res>;
  @override
  $Res call({String text});
}

/// @nodoc
class _$Title3CopyWithImpl<$Res> extends _$ComponentContentCopyWithImpl<$Res>
    implements $Title3CopyWith<$Res> {
  _$Title3CopyWithImpl(Title3 _value, $Res Function(Title3) _then)
      : super(_value, (v) => _then(v as Title3));

  @override
  Title3 get _value => super._value as Title3;

  @override
  $Res call({
    Object? text = freezed,
  }) {
    return _then(Title3(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Title3 with DiagnosticableTreeMixin implements Title3 {
  const _$Title3({required this.text, String? $type})
      : $type = $type ?? 'title3';

  factory _$Title3.fromJson(Map<String, dynamic> json) =>
      _$$Title3FromJson(json);

  @override
  final String text;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ComponentContent.title3(text: $text)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ComponentContent.title3'))
      ..add(DiagnosticsProperty('text', text));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Title3 &&
            const DeepCollectionEquality().equals(other.text, text));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(text));

  @JsonKey(ignore: true)
  @override
  $Title3CopyWith<Title3> get copyWith =>
      _$Title3CopyWithImpl<Title3>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) text,
    required TResult Function(String text) title1,
    required TResult Function(String text) title2,
    required TResult Function(String text) title3,
    required TResult Function(String text) bulletedList,
    required TResult Function(String text) citation,
    required TResult Function(String text, bool value) todo,
  }) {
    return title3(this.text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text)? text,
    TResult Function(String text)? title1,
    TResult Function(String text)? title2,
    TResult Function(String text)? title3,
    TResult Function(String text)? bulletedList,
    TResult Function(String text)? citation,
    TResult Function(String text, bool value)? todo,
  }) {
    return title3?.call(this.text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? text,
    TResult Function(String text)? title1,
    TResult Function(String text)? title2,
    TResult Function(String text)? title3,
    TResult Function(String text)? bulletedList,
    TResult Function(String text)? citation,
    TResult Function(String text, bool value)? todo,
    required TResult orElse(),
  }) {
    if (title3 != null) {
      return title3(this.text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Text value) text,
    required TResult Function(Title1 value) title1,
    required TResult Function(Title2 value) title2,
    required TResult Function(Title3 value) title3,
    required TResult Function(BulletedList value) bulletedList,
    required TResult Function(Citation value) citation,
    required TResult Function(Todo value) todo,
  }) {
    return title3(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Text value)? text,
    TResult Function(Title1 value)? title1,
    TResult Function(Title2 value)? title2,
    TResult Function(Title3 value)? title3,
    TResult Function(BulletedList value)? bulletedList,
    TResult Function(Citation value)? citation,
    TResult Function(Todo value)? todo,
  }) {
    return title3?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Text value)? text,
    TResult Function(Title1 value)? title1,
    TResult Function(Title2 value)? title2,
    TResult Function(Title3 value)? title3,
    TResult Function(BulletedList value)? bulletedList,
    TResult Function(Citation value)? citation,
    TResult Function(Todo value)? todo,
    required TResult orElse(),
  }) {
    if (title3 != null) {
      return title3(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$Title3ToJson(this);
  }
}

abstract class Title3 implements ComponentContent {
  const factory Title3({required String text}) = _$Title3;

  factory Title3.fromJson(Map<String, dynamic> json) = _$Title3.fromJson;

  @override
  String get text;
  @override
  @JsonKey(ignore: true)
  $Title3CopyWith<Title3> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BulletedListCopyWith<$Res>
    implements $ComponentContentCopyWith<$Res> {
  factory $BulletedListCopyWith(
          BulletedList value, $Res Function(BulletedList) then) =
      _$BulletedListCopyWithImpl<$Res>;
  @override
  $Res call({String text});
}

/// @nodoc
class _$BulletedListCopyWithImpl<$Res>
    extends _$ComponentContentCopyWithImpl<$Res>
    implements $BulletedListCopyWith<$Res> {
  _$BulletedListCopyWithImpl(
      BulletedList _value, $Res Function(BulletedList) _then)
      : super(_value, (v) => _then(v as BulletedList));

  @override
  BulletedList get _value => super._value as BulletedList;

  @override
  $Res call({
    Object? text = freezed,
  }) {
    return _then(BulletedList(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BulletedList with DiagnosticableTreeMixin implements BulletedList {
  const _$BulletedList({required this.text, String? $type})
      : $type = $type ?? 'bulletedList';

  factory _$BulletedList.fromJson(Map<String, dynamic> json) =>
      _$$BulletedListFromJson(json);

  @override
  final String text;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ComponentContent.bulletedList(text: $text)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ComponentContent.bulletedList'))
      ..add(DiagnosticsProperty('text', text));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BulletedList &&
            const DeepCollectionEquality().equals(other.text, text));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(text));

  @JsonKey(ignore: true)
  @override
  $BulletedListCopyWith<BulletedList> get copyWith =>
      _$BulletedListCopyWithImpl<BulletedList>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) text,
    required TResult Function(String text) title1,
    required TResult Function(String text) title2,
    required TResult Function(String text) title3,
    required TResult Function(String text) bulletedList,
    required TResult Function(String text) citation,
    required TResult Function(String text, bool value) todo,
  }) {
    return bulletedList(this.text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text)? text,
    TResult Function(String text)? title1,
    TResult Function(String text)? title2,
    TResult Function(String text)? title3,
    TResult Function(String text)? bulletedList,
    TResult Function(String text)? citation,
    TResult Function(String text, bool value)? todo,
  }) {
    return bulletedList?.call(this.text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? text,
    TResult Function(String text)? title1,
    TResult Function(String text)? title2,
    TResult Function(String text)? title3,
    TResult Function(String text)? bulletedList,
    TResult Function(String text)? citation,
    TResult Function(String text, bool value)? todo,
    required TResult orElse(),
  }) {
    if (bulletedList != null) {
      return bulletedList(this.text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Text value) text,
    required TResult Function(Title1 value) title1,
    required TResult Function(Title2 value) title2,
    required TResult Function(Title3 value) title3,
    required TResult Function(BulletedList value) bulletedList,
    required TResult Function(Citation value) citation,
    required TResult Function(Todo value) todo,
  }) {
    return bulletedList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Text value)? text,
    TResult Function(Title1 value)? title1,
    TResult Function(Title2 value)? title2,
    TResult Function(Title3 value)? title3,
    TResult Function(BulletedList value)? bulletedList,
    TResult Function(Citation value)? citation,
    TResult Function(Todo value)? todo,
  }) {
    return bulletedList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Text value)? text,
    TResult Function(Title1 value)? title1,
    TResult Function(Title2 value)? title2,
    TResult Function(Title3 value)? title3,
    TResult Function(BulletedList value)? bulletedList,
    TResult Function(Citation value)? citation,
    TResult Function(Todo value)? todo,
    required TResult orElse(),
  }) {
    if (bulletedList != null) {
      return bulletedList(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BulletedListToJson(this);
  }
}

abstract class BulletedList implements ComponentContent {
  const factory BulletedList({required String text}) = _$BulletedList;

  factory BulletedList.fromJson(Map<String, dynamic> json) =
      _$BulletedList.fromJson;

  @override
  String get text;
  @override
  @JsonKey(ignore: true)
  $BulletedListCopyWith<BulletedList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CitationCopyWith<$Res>
    implements $ComponentContentCopyWith<$Res> {
  factory $CitationCopyWith(Citation value, $Res Function(Citation) then) =
      _$CitationCopyWithImpl<$Res>;
  @override
  $Res call({String text});
}

/// @nodoc
class _$CitationCopyWithImpl<$Res> extends _$ComponentContentCopyWithImpl<$Res>
    implements $CitationCopyWith<$Res> {
  _$CitationCopyWithImpl(Citation _value, $Res Function(Citation) _then)
      : super(_value, (v) => _then(v as Citation));

  @override
  Citation get _value => super._value as Citation;

  @override
  $Res call({
    Object? text = freezed,
  }) {
    return _then(Citation(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Citation with DiagnosticableTreeMixin implements Citation {
  const _$Citation({required this.text, String? $type})
      : $type = $type ?? 'citation';

  factory _$Citation.fromJson(Map<String, dynamic> json) =>
      _$$CitationFromJson(json);

  @override
  final String text;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ComponentContent.citation(text: $text)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ComponentContent.citation'))
      ..add(DiagnosticsProperty('text', text));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Citation &&
            const DeepCollectionEquality().equals(other.text, text));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(text));

  @JsonKey(ignore: true)
  @override
  $CitationCopyWith<Citation> get copyWith =>
      _$CitationCopyWithImpl<Citation>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) text,
    required TResult Function(String text) title1,
    required TResult Function(String text) title2,
    required TResult Function(String text) title3,
    required TResult Function(String text) bulletedList,
    required TResult Function(String text) citation,
    required TResult Function(String text, bool value) todo,
  }) {
    return citation(this.text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text)? text,
    TResult Function(String text)? title1,
    TResult Function(String text)? title2,
    TResult Function(String text)? title3,
    TResult Function(String text)? bulletedList,
    TResult Function(String text)? citation,
    TResult Function(String text, bool value)? todo,
  }) {
    return citation?.call(this.text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? text,
    TResult Function(String text)? title1,
    TResult Function(String text)? title2,
    TResult Function(String text)? title3,
    TResult Function(String text)? bulletedList,
    TResult Function(String text)? citation,
    TResult Function(String text, bool value)? todo,
    required TResult orElse(),
  }) {
    if (citation != null) {
      return citation(this.text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Text value) text,
    required TResult Function(Title1 value) title1,
    required TResult Function(Title2 value) title2,
    required TResult Function(Title3 value) title3,
    required TResult Function(BulletedList value) bulletedList,
    required TResult Function(Citation value) citation,
    required TResult Function(Todo value) todo,
  }) {
    return citation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Text value)? text,
    TResult Function(Title1 value)? title1,
    TResult Function(Title2 value)? title2,
    TResult Function(Title3 value)? title3,
    TResult Function(BulletedList value)? bulletedList,
    TResult Function(Citation value)? citation,
    TResult Function(Todo value)? todo,
  }) {
    return citation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Text value)? text,
    TResult Function(Title1 value)? title1,
    TResult Function(Title2 value)? title2,
    TResult Function(Title3 value)? title3,
    TResult Function(BulletedList value)? bulletedList,
    TResult Function(Citation value)? citation,
    TResult Function(Todo value)? todo,
    required TResult orElse(),
  }) {
    if (citation != null) {
      return citation(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CitationToJson(this);
  }
}

abstract class Citation implements ComponentContent {
  const factory Citation({required String text}) = _$Citation;

  factory Citation.fromJson(Map<String, dynamic> json) = _$Citation.fromJson;

  @override
  String get text;
  @override
  @JsonKey(ignore: true)
  $CitationCopyWith<Citation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoCopyWith<$Res> implements $ComponentContentCopyWith<$Res> {
  factory $TodoCopyWith(Todo value, $Res Function(Todo) then) =
      _$TodoCopyWithImpl<$Res>;
  @override
  $Res call({String text, bool value});
}

/// @nodoc
class _$TodoCopyWithImpl<$Res> extends _$ComponentContentCopyWithImpl<$Res>
    implements $TodoCopyWith<$Res> {
  _$TodoCopyWithImpl(Todo _value, $Res Function(Todo) _then)
      : super(_value, (v) => _then(v as Todo));

  @override
  Todo get _value => super._value as Todo;

  @override
  $Res call({
    Object? text = freezed,
    Object? value = freezed,
  }) {
    return _then(Todo(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Todo with DiagnosticableTreeMixin implements Todo {
  const _$Todo({required this.text, this.value = false, String? $type})
      : $type = $type ?? 'todo';

  factory _$Todo.fromJson(Map<String, dynamic> json) => _$$TodoFromJson(json);

  @override
  final String text;
  @JsonKey()
  @override
  final bool value;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ComponentContent.todo(text: $text, value: $value)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ComponentContent.todo'))
      ..add(DiagnosticsProperty('text', text))
      ..add(DiagnosticsProperty('value', value));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Todo &&
            const DeepCollectionEquality().equals(other.text, text) &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(text),
      const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  $TodoCopyWith<Todo> get copyWith =>
      _$TodoCopyWithImpl<Todo>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) text,
    required TResult Function(String text) title1,
    required TResult Function(String text) title2,
    required TResult Function(String text) title3,
    required TResult Function(String text) bulletedList,
    required TResult Function(String text) citation,
    required TResult Function(String text, bool value) todo,
  }) {
    return todo(this.text, value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text)? text,
    TResult Function(String text)? title1,
    TResult Function(String text)? title2,
    TResult Function(String text)? title3,
    TResult Function(String text)? bulletedList,
    TResult Function(String text)? citation,
    TResult Function(String text, bool value)? todo,
  }) {
    return todo?.call(this.text, value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? text,
    TResult Function(String text)? title1,
    TResult Function(String text)? title2,
    TResult Function(String text)? title3,
    TResult Function(String text)? bulletedList,
    TResult Function(String text)? citation,
    TResult Function(String text, bool value)? todo,
    required TResult orElse(),
  }) {
    if (todo != null) {
      return todo(this.text, value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Text value) text,
    required TResult Function(Title1 value) title1,
    required TResult Function(Title2 value) title2,
    required TResult Function(Title3 value) title3,
    required TResult Function(BulletedList value) bulletedList,
    required TResult Function(Citation value) citation,
    required TResult Function(Todo value) todo,
  }) {
    return todo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Text value)? text,
    TResult Function(Title1 value)? title1,
    TResult Function(Title2 value)? title2,
    TResult Function(Title3 value)? title3,
    TResult Function(BulletedList value)? bulletedList,
    TResult Function(Citation value)? citation,
    TResult Function(Todo value)? todo,
  }) {
    return todo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Text value)? text,
    TResult Function(Title1 value)? title1,
    TResult Function(Title2 value)? title2,
    TResult Function(Title3 value)? title3,
    TResult Function(BulletedList value)? bulletedList,
    TResult Function(Citation value)? citation,
    TResult Function(Todo value)? todo,
    required TResult orElse(),
  }) {
    if (todo != null) {
      return todo(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TodoToJson(this);
  }
}

abstract class Todo implements ComponentContent {
  const factory Todo({required String text, bool value}) = _$Todo;

  factory Todo.fromJson(Map<String, dynamic> json) = _$Todo.fromJson;

  @override
  String get text;
  bool get value;
  @override
  @JsonKey(ignore: true)
  $TodoCopyWith<Todo> get copyWith => throw _privateConstructorUsedError;
}
