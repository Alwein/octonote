// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
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
      return TextComponent.fromJson(json);
    case 'title1':
      return Title1Component.fromJson(json);
    case 'title2':
      return Title2Component.fromJson(json);
    case 'title3':
      return Title3Component.fromJson(json);
    case 'bulletedList':
      return BulletedListComponent.fromJson(json);
    case 'numberedList':
      return NumberedList.fromJson(json);
    case 'citation':
      return CitationComponent.fromJson(json);
    case 'image':
      return ImageComponent.fromJson(json);
    case 'todo':
      return TodoComponent.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'ComponentContent',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
class _$ComponentContentTearOff {
  const _$ComponentContentTearOff();

  TextComponent text({required String content}) {
    return TextComponent(
      content: content,
    );
  }

  Title1Component title1({required String content}) {
    return Title1Component(
      content: content,
    );
  }

  Title2Component title2({required String content}) {
    return Title2Component(
      content: content,
    );
  }

  Title3Component title3({required String content}) {
    return Title3Component(
      content: content,
    );
  }

  BulletedListComponent bulletedList({required String content}) {
    return BulletedListComponent(
      content: content,
    );
  }

  NumberedList numberedList({required String content}) {
    return NumberedList(
      content: content,
    );
  }

  CitationComponent citation({required String content}) {
    return CitationComponent(
      content: content,
    );
  }

  ImageComponent image({required String content}) {
    return ImageComponent(
      content: content,
    );
  }

  TodoComponent todo({required String content, bool value = false}) {
    return TodoComponent(
      content: content,
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
  String get content => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String content) text,
    required TResult Function(String content) title1,
    required TResult Function(String content) title2,
    required TResult Function(String content) title3,
    required TResult Function(String content) bulletedList,
    required TResult Function(String content) numberedList,
    required TResult Function(String content) citation,
    required TResult Function(String content) image,
    required TResult Function(String content, bool value) todo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String content)? text,
    TResult Function(String content)? title1,
    TResult Function(String content)? title2,
    TResult Function(String content)? title3,
    TResult Function(String content)? bulletedList,
    TResult Function(String content)? numberedList,
    TResult Function(String content)? citation,
    TResult Function(String content)? image,
    TResult Function(String content, bool value)? todo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String content)? text,
    TResult Function(String content)? title1,
    TResult Function(String content)? title2,
    TResult Function(String content)? title3,
    TResult Function(String content)? bulletedList,
    TResult Function(String content)? numberedList,
    TResult Function(String content)? citation,
    TResult Function(String content)? image,
    TResult Function(String content, bool value)? todo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TextComponent value) text,
    required TResult Function(Title1Component value) title1,
    required TResult Function(Title2Component value) title2,
    required TResult Function(Title3Component value) title3,
    required TResult Function(BulletedListComponent value) bulletedList,
    required TResult Function(NumberedList value) numberedList,
    required TResult Function(CitationComponent value) citation,
    required TResult Function(ImageComponent value) image,
    required TResult Function(TodoComponent value) todo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TextComponent value)? text,
    TResult Function(Title1Component value)? title1,
    TResult Function(Title2Component value)? title2,
    TResult Function(Title3Component value)? title3,
    TResult Function(BulletedListComponent value)? bulletedList,
    TResult Function(NumberedList value)? numberedList,
    TResult Function(CitationComponent value)? citation,
    TResult Function(ImageComponent value)? image,
    TResult Function(TodoComponent value)? todo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TextComponent value)? text,
    TResult Function(Title1Component value)? title1,
    TResult Function(Title2Component value)? title2,
    TResult Function(Title3Component value)? title3,
    TResult Function(BulletedListComponent value)? bulletedList,
    TResult Function(NumberedList value)? numberedList,
    TResult Function(CitationComponent value)? citation,
    TResult Function(ImageComponent value)? image,
    TResult Function(TodoComponent value)? todo,
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
  $Res call({String content});
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
    Object? content = freezed,
  }) {
    return _then(_value.copyWith(
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $TextComponentCopyWith<$Res>
    implements $ComponentContentCopyWith<$Res> {
  factory $TextComponentCopyWith(
          TextComponent value, $Res Function(TextComponent) then) =
      _$TextComponentCopyWithImpl<$Res>;
  @override
  $Res call({String content});
}

/// @nodoc
class _$TextComponentCopyWithImpl<$Res>
    extends _$ComponentContentCopyWithImpl<$Res>
    implements $TextComponentCopyWith<$Res> {
  _$TextComponentCopyWithImpl(
      TextComponent _value, $Res Function(TextComponent) _then)
      : super(_value, (v) => _then(v as TextComponent));

  @override
  TextComponent get _value => super._value as TextComponent;

  @override
  $Res call({
    Object? content = freezed,
  }) {
    return _then(TextComponent(
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TextComponent with DiagnosticableTreeMixin implements TextComponent {
  const _$TextComponent({required this.content, String? $type})
      : $type = $type ?? 'text';

  factory _$TextComponent.fromJson(Map<String, dynamic> json) =>
      _$$TextComponentFromJson(json);

  @override
  final String content;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ComponentContent.text(content: $content)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ComponentContent.text'))
      ..add(DiagnosticsProperty('content', content));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TextComponent &&
            const DeepCollectionEquality().equals(other.content, content));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(content));

  @JsonKey(ignore: true)
  @override
  $TextComponentCopyWith<TextComponent> get copyWith =>
      _$TextComponentCopyWithImpl<TextComponent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String content) text,
    required TResult Function(String content) title1,
    required TResult Function(String content) title2,
    required TResult Function(String content) title3,
    required TResult Function(String content) bulletedList,
    required TResult Function(String content) numberedList,
    required TResult Function(String content) citation,
    required TResult Function(String content) image,
    required TResult Function(String content, bool value) todo,
  }) {
    return text(content);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String content)? text,
    TResult Function(String content)? title1,
    TResult Function(String content)? title2,
    TResult Function(String content)? title3,
    TResult Function(String content)? bulletedList,
    TResult Function(String content)? numberedList,
    TResult Function(String content)? citation,
    TResult Function(String content)? image,
    TResult Function(String content, bool value)? todo,
  }) {
    return text?.call(content);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String content)? text,
    TResult Function(String content)? title1,
    TResult Function(String content)? title2,
    TResult Function(String content)? title3,
    TResult Function(String content)? bulletedList,
    TResult Function(String content)? numberedList,
    TResult Function(String content)? citation,
    TResult Function(String content)? image,
    TResult Function(String content, bool value)? todo,
    required TResult orElse(),
  }) {
    if (text != null) {
      return text(content);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TextComponent value) text,
    required TResult Function(Title1Component value) title1,
    required TResult Function(Title2Component value) title2,
    required TResult Function(Title3Component value) title3,
    required TResult Function(BulletedListComponent value) bulletedList,
    required TResult Function(NumberedList value) numberedList,
    required TResult Function(CitationComponent value) citation,
    required TResult Function(ImageComponent value) image,
    required TResult Function(TodoComponent value) todo,
  }) {
    return text(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TextComponent value)? text,
    TResult Function(Title1Component value)? title1,
    TResult Function(Title2Component value)? title2,
    TResult Function(Title3Component value)? title3,
    TResult Function(BulletedListComponent value)? bulletedList,
    TResult Function(NumberedList value)? numberedList,
    TResult Function(CitationComponent value)? citation,
    TResult Function(ImageComponent value)? image,
    TResult Function(TodoComponent value)? todo,
  }) {
    return text?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TextComponent value)? text,
    TResult Function(Title1Component value)? title1,
    TResult Function(Title2Component value)? title2,
    TResult Function(Title3Component value)? title3,
    TResult Function(BulletedListComponent value)? bulletedList,
    TResult Function(NumberedList value)? numberedList,
    TResult Function(CitationComponent value)? citation,
    TResult Function(ImageComponent value)? image,
    TResult Function(TodoComponent value)? todo,
    required TResult orElse(),
  }) {
    if (text != null) {
      return text(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TextComponentToJson(this);
  }
}

abstract class TextComponent implements ComponentContent {
  const factory TextComponent({required String content}) = _$TextComponent;

  factory TextComponent.fromJson(Map<String, dynamic> json) =
      _$TextComponent.fromJson;

  @override
  String get content;
  @override
  @JsonKey(ignore: true)
  $TextComponentCopyWith<TextComponent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Title1ComponentCopyWith<$Res>
    implements $ComponentContentCopyWith<$Res> {
  factory $Title1ComponentCopyWith(
          Title1Component value, $Res Function(Title1Component) then) =
      _$Title1ComponentCopyWithImpl<$Res>;
  @override
  $Res call({String content});
}

/// @nodoc
class _$Title1ComponentCopyWithImpl<$Res>
    extends _$ComponentContentCopyWithImpl<$Res>
    implements $Title1ComponentCopyWith<$Res> {
  _$Title1ComponentCopyWithImpl(
      Title1Component _value, $Res Function(Title1Component) _then)
      : super(_value, (v) => _then(v as Title1Component));

  @override
  Title1Component get _value => super._value as Title1Component;

  @override
  $Res call({
    Object? content = freezed,
  }) {
    return _then(Title1Component(
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Title1Component
    with DiagnosticableTreeMixin
    implements Title1Component {
  const _$Title1Component({required this.content, String? $type})
      : $type = $type ?? 'title1';

  factory _$Title1Component.fromJson(Map<String, dynamic> json) =>
      _$$Title1ComponentFromJson(json);

  @override
  final String content;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ComponentContent.title1(content: $content)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ComponentContent.title1'))
      ..add(DiagnosticsProperty('content', content));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Title1Component &&
            const DeepCollectionEquality().equals(other.content, content));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(content));

  @JsonKey(ignore: true)
  @override
  $Title1ComponentCopyWith<Title1Component> get copyWith =>
      _$Title1ComponentCopyWithImpl<Title1Component>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String content) text,
    required TResult Function(String content) title1,
    required TResult Function(String content) title2,
    required TResult Function(String content) title3,
    required TResult Function(String content) bulletedList,
    required TResult Function(String content) numberedList,
    required TResult Function(String content) citation,
    required TResult Function(String content) image,
    required TResult Function(String content, bool value) todo,
  }) {
    return title1(content);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String content)? text,
    TResult Function(String content)? title1,
    TResult Function(String content)? title2,
    TResult Function(String content)? title3,
    TResult Function(String content)? bulletedList,
    TResult Function(String content)? numberedList,
    TResult Function(String content)? citation,
    TResult Function(String content)? image,
    TResult Function(String content, bool value)? todo,
  }) {
    return title1?.call(content);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String content)? text,
    TResult Function(String content)? title1,
    TResult Function(String content)? title2,
    TResult Function(String content)? title3,
    TResult Function(String content)? bulletedList,
    TResult Function(String content)? numberedList,
    TResult Function(String content)? citation,
    TResult Function(String content)? image,
    TResult Function(String content, bool value)? todo,
    required TResult orElse(),
  }) {
    if (title1 != null) {
      return title1(content);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TextComponent value) text,
    required TResult Function(Title1Component value) title1,
    required TResult Function(Title2Component value) title2,
    required TResult Function(Title3Component value) title3,
    required TResult Function(BulletedListComponent value) bulletedList,
    required TResult Function(NumberedList value) numberedList,
    required TResult Function(CitationComponent value) citation,
    required TResult Function(ImageComponent value) image,
    required TResult Function(TodoComponent value) todo,
  }) {
    return title1(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TextComponent value)? text,
    TResult Function(Title1Component value)? title1,
    TResult Function(Title2Component value)? title2,
    TResult Function(Title3Component value)? title3,
    TResult Function(BulletedListComponent value)? bulletedList,
    TResult Function(NumberedList value)? numberedList,
    TResult Function(CitationComponent value)? citation,
    TResult Function(ImageComponent value)? image,
    TResult Function(TodoComponent value)? todo,
  }) {
    return title1?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TextComponent value)? text,
    TResult Function(Title1Component value)? title1,
    TResult Function(Title2Component value)? title2,
    TResult Function(Title3Component value)? title3,
    TResult Function(BulletedListComponent value)? bulletedList,
    TResult Function(NumberedList value)? numberedList,
    TResult Function(CitationComponent value)? citation,
    TResult Function(ImageComponent value)? image,
    TResult Function(TodoComponent value)? todo,
    required TResult orElse(),
  }) {
    if (title1 != null) {
      return title1(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$Title1ComponentToJson(this);
  }
}

abstract class Title1Component implements ComponentContent {
  const factory Title1Component({required String content}) = _$Title1Component;

  factory Title1Component.fromJson(Map<String, dynamic> json) =
      _$Title1Component.fromJson;

  @override
  String get content;
  @override
  @JsonKey(ignore: true)
  $Title1ComponentCopyWith<Title1Component> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Title2ComponentCopyWith<$Res>
    implements $ComponentContentCopyWith<$Res> {
  factory $Title2ComponentCopyWith(
          Title2Component value, $Res Function(Title2Component) then) =
      _$Title2ComponentCopyWithImpl<$Res>;
  @override
  $Res call({String content});
}

/// @nodoc
class _$Title2ComponentCopyWithImpl<$Res>
    extends _$ComponentContentCopyWithImpl<$Res>
    implements $Title2ComponentCopyWith<$Res> {
  _$Title2ComponentCopyWithImpl(
      Title2Component _value, $Res Function(Title2Component) _then)
      : super(_value, (v) => _then(v as Title2Component));

  @override
  Title2Component get _value => super._value as Title2Component;

  @override
  $Res call({
    Object? content = freezed,
  }) {
    return _then(Title2Component(
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Title2Component
    with DiagnosticableTreeMixin
    implements Title2Component {
  const _$Title2Component({required this.content, String? $type})
      : $type = $type ?? 'title2';

  factory _$Title2Component.fromJson(Map<String, dynamic> json) =>
      _$$Title2ComponentFromJson(json);

  @override
  final String content;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ComponentContent.title2(content: $content)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ComponentContent.title2'))
      ..add(DiagnosticsProperty('content', content));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Title2Component &&
            const DeepCollectionEquality().equals(other.content, content));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(content));

  @JsonKey(ignore: true)
  @override
  $Title2ComponentCopyWith<Title2Component> get copyWith =>
      _$Title2ComponentCopyWithImpl<Title2Component>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String content) text,
    required TResult Function(String content) title1,
    required TResult Function(String content) title2,
    required TResult Function(String content) title3,
    required TResult Function(String content) bulletedList,
    required TResult Function(String content) numberedList,
    required TResult Function(String content) citation,
    required TResult Function(String content) image,
    required TResult Function(String content, bool value) todo,
  }) {
    return title2(content);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String content)? text,
    TResult Function(String content)? title1,
    TResult Function(String content)? title2,
    TResult Function(String content)? title3,
    TResult Function(String content)? bulletedList,
    TResult Function(String content)? numberedList,
    TResult Function(String content)? citation,
    TResult Function(String content)? image,
    TResult Function(String content, bool value)? todo,
  }) {
    return title2?.call(content);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String content)? text,
    TResult Function(String content)? title1,
    TResult Function(String content)? title2,
    TResult Function(String content)? title3,
    TResult Function(String content)? bulletedList,
    TResult Function(String content)? numberedList,
    TResult Function(String content)? citation,
    TResult Function(String content)? image,
    TResult Function(String content, bool value)? todo,
    required TResult orElse(),
  }) {
    if (title2 != null) {
      return title2(content);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TextComponent value) text,
    required TResult Function(Title1Component value) title1,
    required TResult Function(Title2Component value) title2,
    required TResult Function(Title3Component value) title3,
    required TResult Function(BulletedListComponent value) bulletedList,
    required TResult Function(NumberedList value) numberedList,
    required TResult Function(CitationComponent value) citation,
    required TResult Function(ImageComponent value) image,
    required TResult Function(TodoComponent value) todo,
  }) {
    return title2(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TextComponent value)? text,
    TResult Function(Title1Component value)? title1,
    TResult Function(Title2Component value)? title2,
    TResult Function(Title3Component value)? title3,
    TResult Function(BulletedListComponent value)? bulletedList,
    TResult Function(NumberedList value)? numberedList,
    TResult Function(CitationComponent value)? citation,
    TResult Function(ImageComponent value)? image,
    TResult Function(TodoComponent value)? todo,
  }) {
    return title2?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TextComponent value)? text,
    TResult Function(Title1Component value)? title1,
    TResult Function(Title2Component value)? title2,
    TResult Function(Title3Component value)? title3,
    TResult Function(BulletedListComponent value)? bulletedList,
    TResult Function(NumberedList value)? numberedList,
    TResult Function(CitationComponent value)? citation,
    TResult Function(ImageComponent value)? image,
    TResult Function(TodoComponent value)? todo,
    required TResult orElse(),
  }) {
    if (title2 != null) {
      return title2(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$Title2ComponentToJson(this);
  }
}

abstract class Title2Component implements ComponentContent {
  const factory Title2Component({required String content}) = _$Title2Component;

  factory Title2Component.fromJson(Map<String, dynamic> json) =
      _$Title2Component.fromJson;

  @override
  String get content;
  @override
  @JsonKey(ignore: true)
  $Title2ComponentCopyWith<Title2Component> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Title3ComponentCopyWith<$Res>
    implements $ComponentContentCopyWith<$Res> {
  factory $Title3ComponentCopyWith(
          Title3Component value, $Res Function(Title3Component) then) =
      _$Title3ComponentCopyWithImpl<$Res>;
  @override
  $Res call({String content});
}

/// @nodoc
class _$Title3ComponentCopyWithImpl<$Res>
    extends _$ComponentContentCopyWithImpl<$Res>
    implements $Title3ComponentCopyWith<$Res> {
  _$Title3ComponentCopyWithImpl(
      Title3Component _value, $Res Function(Title3Component) _then)
      : super(_value, (v) => _then(v as Title3Component));

  @override
  Title3Component get _value => super._value as Title3Component;

  @override
  $Res call({
    Object? content = freezed,
  }) {
    return _then(Title3Component(
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Title3Component
    with DiagnosticableTreeMixin
    implements Title3Component {
  const _$Title3Component({required this.content, String? $type})
      : $type = $type ?? 'title3';

  factory _$Title3Component.fromJson(Map<String, dynamic> json) =>
      _$$Title3ComponentFromJson(json);

  @override
  final String content;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ComponentContent.title3(content: $content)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ComponentContent.title3'))
      ..add(DiagnosticsProperty('content', content));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Title3Component &&
            const DeepCollectionEquality().equals(other.content, content));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(content));

  @JsonKey(ignore: true)
  @override
  $Title3ComponentCopyWith<Title3Component> get copyWith =>
      _$Title3ComponentCopyWithImpl<Title3Component>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String content) text,
    required TResult Function(String content) title1,
    required TResult Function(String content) title2,
    required TResult Function(String content) title3,
    required TResult Function(String content) bulletedList,
    required TResult Function(String content) numberedList,
    required TResult Function(String content) citation,
    required TResult Function(String content) image,
    required TResult Function(String content, bool value) todo,
  }) {
    return title3(content);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String content)? text,
    TResult Function(String content)? title1,
    TResult Function(String content)? title2,
    TResult Function(String content)? title3,
    TResult Function(String content)? bulletedList,
    TResult Function(String content)? numberedList,
    TResult Function(String content)? citation,
    TResult Function(String content)? image,
    TResult Function(String content, bool value)? todo,
  }) {
    return title3?.call(content);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String content)? text,
    TResult Function(String content)? title1,
    TResult Function(String content)? title2,
    TResult Function(String content)? title3,
    TResult Function(String content)? bulletedList,
    TResult Function(String content)? numberedList,
    TResult Function(String content)? citation,
    TResult Function(String content)? image,
    TResult Function(String content, bool value)? todo,
    required TResult orElse(),
  }) {
    if (title3 != null) {
      return title3(content);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TextComponent value) text,
    required TResult Function(Title1Component value) title1,
    required TResult Function(Title2Component value) title2,
    required TResult Function(Title3Component value) title3,
    required TResult Function(BulletedListComponent value) bulletedList,
    required TResult Function(NumberedList value) numberedList,
    required TResult Function(CitationComponent value) citation,
    required TResult Function(ImageComponent value) image,
    required TResult Function(TodoComponent value) todo,
  }) {
    return title3(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TextComponent value)? text,
    TResult Function(Title1Component value)? title1,
    TResult Function(Title2Component value)? title2,
    TResult Function(Title3Component value)? title3,
    TResult Function(BulletedListComponent value)? bulletedList,
    TResult Function(NumberedList value)? numberedList,
    TResult Function(CitationComponent value)? citation,
    TResult Function(ImageComponent value)? image,
    TResult Function(TodoComponent value)? todo,
  }) {
    return title3?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TextComponent value)? text,
    TResult Function(Title1Component value)? title1,
    TResult Function(Title2Component value)? title2,
    TResult Function(Title3Component value)? title3,
    TResult Function(BulletedListComponent value)? bulletedList,
    TResult Function(NumberedList value)? numberedList,
    TResult Function(CitationComponent value)? citation,
    TResult Function(ImageComponent value)? image,
    TResult Function(TodoComponent value)? todo,
    required TResult orElse(),
  }) {
    if (title3 != null) {
      return title3(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$Title3ComponentToJson(this);
  }
}

abstract class Title3Component implements ComponentContent {
  const factory Title3Component({required String content}) = _$Title3Component;

  factory Title3Component.fromJson(Map<String, dynamic> json) =
      _$Title3Component.fromJson;

  @override
  String get content;
  @override
  @JsonKey(ignore: true)
  $Title3ComponentCopyWith<Title3Component> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BulletedListComponentCopyWith<$Res>
    implements $ComponentContentCopyWith<$Res> {
  factory $BulletedListComponentCopyWith(BulletedListComponent value,
          $Res Function(BulletedListComponent) then) =
      _$BulletedListComponentCopyWithImpl<$Res>;
  @override
  $Res call({String content});
}

/// @nodoc
class _$BulletedListComponentCopyWithImpl<$Res>
    extends _$ComponentContentCopyWithImpl<$Res>
    implements $BulletedListComponentCopyWith<$Res> {
  _$BulletedListComponentCopyWithImpl(
      BulletedListComponent _value, $Res Function(BulletedListComponent) _then)
      : super(_value, (v) => _then(v as BulletedListComponent));

  @override
  BulletedListComponent get _value => super._value as BulletedListComponent;

  @override
  $Res call({
    Object? content = freezed,
  }) {
    return _then(BulletedListComponent(
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BulletedListComponent
    with DiagnosticableTreeMixin
    implements BulletedListComponent {
  const _$BulletedListComponent({required this.content, String? $type})
      : $type = $type ?? 'bulletedList';

  factory _$BulletedListComponent.fromJson(Map<String, dynamic> json) =>
      _$$BulletedListComponentFromJson(json);

  @override
  final String content;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ComponentContent.bulletedList(content: $content)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ComponentContent.bulletedList'))
      ..add(DiagnosticsProperty('content', content));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BulletedListComponent &&
            const DeepCollectionEquality().equals(other.content, content));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(content));

  @JsonKey(ignore: true)
  @override
  $BulletedListComponentCopyWith<BulletedListComponent> get copyWith =>
      _$BulletedListComponentCopyWithImpl<BulletedListComponent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String content) text,
    required TResult Function(String content) title1,
    required TResult Function(String content) title2,
    required TResult Function(String content) title3,
    required TResult Function(String content) bulletedList,
    required TResult Function(String content) numberedList,
    required TResult Function(String content) citation,
    required TResult Function(String content) image,
    required TResult Function(String content, bool value) todo,
  }) {
    return bulletedList(content);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String content)? text,
    TResult Function(String content)? title1,
    TResult Function(String content)? title2,
    TResult Function(String content)? title3,
    TResult Function(String content)? bulletedList,
    TResult Function(String content)? numberedList,
    TResult Function(String content)? citation,
    TResult Function(String content)? image,
    TResult Function(String content, bool value)? todo,
  }) {
    return bulletedList?.call(content);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String content)? text,
    TResult Function(String content)? title1,
    TResult Function(String content)? title2,
    TResult Function(String content)? title3,
    TResult Function(String content)? bulletedList,
    TResult Function(String content)? numberedList,
    TResult Function(String content)? citation,
    TResult Function(String content)? image,
    TResult Function(String content, bool value)? todo,
    required TResult orElse(),
  }) {
    if (bulletedList != null) {
      return bulletedList(content);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TextComponent value) text,
    required TResult Function(Title1Component value) title1,
    required TResult Function(Title2Component value) title2,
    required TResult Function(Title3Component value) title3,
    required TResult Function(BulletedListComponent value) bulletedList,
    required TResult Function(NumberedList value) numberedList,
    required TResult Function(CitationComponent value) citation,
    required TResult Function(ImageComponent value) image,
    required TResult Function(TodoComponent value) todo,
  }) {
    return bulletedList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TextComponent value)? text,
    TResult Function(Title1Component value)? title1,
    TResult Function(Title2Component value)? title2,
    TResult Function(Title3Component value)? title3,
    TResult Function(BulletedListComponent value)? bulletedList,
    TResult Function(NumberedList value)? numberedList,
    TResult Function(CitationComponent value)? citation,
    TResult Function(ImageComponent value)? image,
    TResult Function(TodoComponent value)? todo,
  }) {
    return bulletedList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TextComponent value)? text,
    TResult Function(Title1Component value)? title1,
    TResult Function(Title2Component value)? title2,
    TResult Function(Title3Component value)? title3,
    TResult Function(BulletedListComponent value)? bulletedList,
    TResult Function(NumberedList value)? numberedList,
    TResult Function(CitationComponent value)? citation,
    TResult Function(ImageComponent value)? image,
    TResult Function(TodoComponent value)? todo,
    required TResult orElse(),
  }) {
    if (bulletedList != null) {
      return bulletedList(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BulletedListComponentToJson(this);
  }
}

abstract class BulletedListComponent implements ComponentContent {
  const factory BulletedListComponent({required String content}) =
      _$BulletedListComponent;

  factory BulletedListComponent.fromJson(Map<String, dynamic> json) =
      _$BulletedListComponent.fromJson;

  @override
  String get content;
  @override
  @JsonKey(ignore: true)
  $BulletedListComponentCopyWith<BulletedListComponent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NumberedListCopyWith<$Res>
    implements $ComponentContentCopyWith<$Res> {
  factory $NumberedListCopyWith(
          NumberedList value, $Res Function(NumberedList) then) =
      _$NumberedListCopyWithImpl<$Res>;
  @override
  $Res call({String content});
}

/// @nodoc
class _$NumberedListCopyWithImpl<$Res>
    extends _$ComponentContentCopyWithImpl<$Res>
    implements $NumberedListCopyWith<$Res> {
  _$NumberedListCopyWithImpl(
      NumberedList _value, $Res Function(NumberedList) _then)
      : super(_value, (v) => _then(v as NumberedList));

  @override
  NumberedList get _value => super._value as NumberedList;

  @override
  $Res call({
    Object? content = freezed,
  }) {
    return _then(NumberedList(
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NumberedList with DiagnosticableTreeMixin implements NumberedList {
  const _$NumberedList({required this.content, String? $type})
      : $type = $type ?? 'numberedList';

  factory _$NumberedList.fromJson(Map<String, dynamic> json) =>
      _$$NumberedListFromJson(json);

  @override
  final String content;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ComponentContent.numberedList(content: $content)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ComponentContent.numberedList'))
      ..add(DiagnosticsProperty('content', content));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NumberedList &&
            const DeepCollectionEquality().equals(other.content, content));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(content));

  @JsonKey(ignore: true)
  @override
  $NumberedListCopyWith<NumberedList> get copyWith =>
      _$NumberedListCopyWithImpl<NumberedList>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String content) text,
    required TResult Function(String content) title1,
    required TResult Function(String content) title2,
    required TResult Function(String content) title3,
    required TResult Function(String content) bulletedList,
    required TResult Function(String content) numberedList,
    required TResult Function(String content) citation,
    required TResult Function(String content) image,
    required TResult Function(String content, bool value) todo,
  }) {
    return numberedList(content);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String content)? text,
    TResult Function(String content)? title1,
    TResult Function(String content)? title2,
    TResult Function(String content)? title3,
    TResult Function(String content)? bulletedList,
    TResult Function(String content)? numberedList,
    TResult Function(String content)? citation,
    TResult Function(String content)? image,
    TResult Function(String content, bool value)? todo,
  }) {
    return numberedList?.call(content);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String content)? text,
    TResult Function(String content)? title1,
    TResult Function(String content)? title2,
    TResult Function(String content)? title3,
    TResult Function(String content)? bulletedList,
    TResult Function(String content)? numberedList,
    TResult Function(String content)? citation,
    TResult Function(String content)? image,
    TResult Function(String content, bool value)? todo,
    required TResult orElse(),
  }) {
    if (numberedList != null) {
      return numberedList(content);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TextComponent value) text,
    required TResult Function(Title1Component value) title1,
    required TResult Function(Title2Component value) title2,
    required TResult Function(Title3Component value) title3,
    required TResult Function(BulletedListComponent value) bulletedList,
    required TResult Function(NumberedList value) numberedList,
    required TResult Function(CitationComponent value) citation,
    required TResult Function(ImageComponent value) image,
    required TResult Function(TodoComponent value) todo,
  }) {
    return numberedList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TextComponent value)? text,
    TResult Function(Title1Component value)? title1,
    TResult Function(Title2Component value)? title2,
    TResult Function(Title3Component value)? title3,
    TResult Function(BulletedListComponent value)? bulletedList,
    TResult Function(NumberedList value)? numberedList,
    TResult Function(CitationComponent value)? citation,
    TResult Function(ImageComponent value)? image,
    TResult Function(TodoComponent value)? todo,
  }) {
    return numberedList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TextComponent value)? text,
    TResult Function(Title1Component value)? title1,
    TResult Function(Title2Component value)? title2,
    TResult Function(Title3Component value)? title3,
    TResult Function(BulletedListComponent value)? bulletedList,
    TResult Function(NumberedList value)? numberedList,
    TResult Function(CitationComponent value)? citation,
    TResult Function(ImageComponent value)? image,
    TResult Function(TodoComponent value)? todo,
    required TResult orElse(),
  }) {
    if (numberedList != null) {
      return numberedList(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$NumberedListToJson(this);
  }
}

abstract class NumberedList implements ComponentContent {
  const factory NumberedList({required String content}) = _$NumberedList;

  factory NumberedList.fromJson(Map<String, dynamic> json) =
      _$NumberedList.fromJson;

  @override
  String get content;
  @override
  @JsonKey(ignore: true)
  $NumberedListCopyWith<NumberedList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CitationComponentCopyWith<$Res>
    implements $ComponentContentCopyWith<$Res> {
  factory $CitationComponentCopyWith(
          CitationComponent value, $Res Function(CitationComponent) then) =
      _$CitationComponentCopyWithImpl<$Res>;
  @override
  $Res call({String content});
}

/// @nodoc
class _$CitationComponentCopyWithImpl<$Res>
    extends _$ComponentContentCopyWithImpl<$Res>
    implements $CitationComponentCopyWith<$Res> {
  _$CitationComponentCopyWithImpl(
      CitationComponent _value, $Res Function(CitationComponent) _then)
      : super(_value, (v) => _then(v as CitationComponent));

  @override
  CitationComponent get _value => super._value as CitationComponent;

  @override
  $Res call({
    Object? content = freezed,
  }) {
    return _then(CitationComponent(
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CitationComponent
    with DiagnosticableTreeMixin
    implements CitationComponent {
  const _$CitationComponent({required this.content, String? $type})
      : $type = $type ?? 'citation';

  factory _$CitationComponent.fromJson(Map<String, dynamic> json) =>
      _$$CitationComponentFromJson(json);

  @override
  final String content;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ComponentContent.citation(content: $content)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ComponentContent.citation'))
      ..add(DiagnosticsProperty('content', content));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CitationComponent &&
            const DeepCollectionEquality().equals(other.content, content));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(content));

  @JsonKey(ignore: true)
  @override
  $CitationComponentCopyWith<CitationComponent> get copyWith =>
      _$CitationComponentCopyWithImpl<CitationComponent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String content) text,
    required TResult Function(String content) title1,
    required TResult Function(String content) title2,
    required TResult Function(String content) title3,
    required TResult Function(String content) bulletedList,
    required TResult Function(String content) numberedList,
    required TResult Function(String content) citation,
    required TResult Function(String content) image,
    required TResult Function(String content, bool value) todo,
  }) {
    return citation(content);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String content)? text,
    TResult Function(String content)? title1,
    TResult Function(String content)? title2,
    TResult Function(String content)? title3,
    TResult Function(String content)? bulletedList,
    TResult Function(String content)? numberedList,
    TResult Function(String content)? citation,
    TResult Function(String content)? image,
    TResult Function(String content, bool value)? todo,
  }) {
    return citation?.call(content);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String content)? text,
    TResult Function(String content)? title1,
    TResult Function(String content)? title2,
    TResult Function(String content)? title3,
    TResult Function(String content)? bulletedList,
    TResult Function(String content)? numberedList,
    TResult Function(String content)? citation,
    TResult Function(String content)? image,
    TResult Function(String content, bool value)? todo,
    required TResult orElse(),
  }) {
    if (citation != null) {
      return citation(content);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TextComponent value) text,
    required TResult Function(Title1Component value) title1,
    required TResult Function(Title2Component value) title2,
    required TResult Function(Title3Component value) title3,
    required TResult Function(BulletedListComponent value) bulletedList,
    required TResult Function(NumberedList value) numberedList,
    required TResult Function(CitationComponent value) citation,
    required TResult Function(ImageComponent value) image,
    required TResult Function(TodoComponent value) todo,
  }) {
    return citation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TextComponent value)? text,
    TResult Function(Title1Component value)? title1,
    TResult Function(Title2Component value)? title2,
    TResult Function(Title3Component value)? title3,
    TResult Function(BulletedListComponent value)? bulletedList,
    TResult Function(NumberedList value)? numberedList,
    TResult Function(CitationComponent value)? citation,
    TResult Function(ImageComponent value)? image,
    TResult Function(TodoComponent value)? todo,
  }) {
    return citation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TextComponent value)? text,
    TResult Function(Title1Component value)? title1,
    TResult Function(Title2Component value)? title2,
    TResult Function(Title3Component value)? title3,
    TResult Function(BulletedListComponent value)? bulletedList,
    TResult Function(NumberedList value)? numberedList,
    TResult Function(CitationComponent value)? citation,
    TResult Function(ImageComponent value)? image,
    TResult Function(TodoComponent value)? todo,
    required TResult orElse(),
  }) {
    if (citation != null) {
      return citation(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CitationComponentToJson(this);
  }
}

abstract class CitationComponent implements ComponentContent {
  const factory CitationComponent({required String content}) =
      _$CitationComponent;

  factory CitationComponent.fromJson(Map<String, dynamic> json) =
      _$CitationComponent.fromJson;

  @override
  String get content;
  @override
  @JsonKey(ignore: true)
  $CitationComponentCopyWith<CitationComponent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageComponentCopyWith<$Res>
    implements $ComponentContentCopyWith<$Res> {
  factory $ImageComponentCopyWith(
          ImageComponent value, $Res Function(ImageComponent) then) =
      _$ImageComponentCopyWithImpl<$Res>;
  @override
  $Res call({String content});
}

/// @nodoc
class _$ImageComponentCopyWithImpl<$Res>
    extends _$ComponentContentCopyWithImpl<$Res>
    implements $ImageComponentCopyWith<$Res> {
  _$ImageComponentCopyWithImpl(
      ImageComponent _value, $Res Function(ImageComponent) _then)
      : super(_value, (v) => _then(v as ImageComponent));

  @override
  ImageComponent get _value => super._value as ImageComponent;

  @override
  $Res call({
    Object? content = freezed,
  }) {
    return _then(ImageComponent(
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImageComponent with DiagnosticableTreeMixin implements ImageComponent {
  const _$ImageComponent({required this.content, String? $type})
      : $type = $type ?? 'image';

  factory _$ImageComponent.fromJson(Map<String, dynamic> json) =>
      _$$ImageComponentFromJson(json);

  @override
  final String content;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ComponentContent.image(content: $content)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ComponentContent.image'))
      ..add(DiagnosticsProperty('content', content));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ImageComponent &&
            const DeepCollectionEquality().equals(other.content, content));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(content));

  @JsonKey(ignore: true)
  @override
  $ImageComponentCopyWith<ImageComponent> get copyWith =>
      _$ImageComponentCopyWithImpl<ImageComponent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String content) text,
    required TResult Function(String content) title1,
    required TResult Function(String content) title2,
    required TResult Function(String content) title3,
    required TResult Function(String content) bulletedList,
    required TResult Function(String content) numberedList,
    required TResult Function(String content) citation,
    required TResult Function(String content) image,
    required TResult Function(String content, bool value) todo,
  }) {
    return image(content);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String content)? text,
    TResult Function(String content)? title1,
    TResult Function(String content)? title2,
    TResult Function(String content)? title3,
    TResult Function(String content)? bulletedList,
    TResult Function(String content)? numberedList,
    TResult Function(String content)? citation,
    TResult Function(String content)? image,
    TResult Function(String content, bool value)? todo,
  }) {
    return image?.call(content);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String content)? text,
    TResult Function(String content)? title1,
    TResult Function(String content)? title2,
    TResult Function(String content)? title3,
    TResult Function(String content)? bulletedList,
    TResult Function(String content)? numberedList,
    TResult Function(String content)? citation,
    TResult Function(String content)? image,
    TResult Function(String content, bool value)? todo,
    required TResult orElse(),
  }) {
    if (image != null) {
      return image(content);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TextComponent value) text,
    required TResult Function(Title1Component value) title1,
    required TResult Function(Title2Component value) title2,
    required TResult Function(Title3Component value) title3,
    required TResult Function(BulletedListComponent value) bulletedList,
    required TResult Function(NumberedList value) numberedList,
    required TResult Function(CitationComponent value) citation,
    required TResult Function(ImageComponent value) image,
    required TResult Function(TodoComponent value) todo,
  }) {
    return image(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TextComponent value)? text,
    TResult Function(Title1Component value)? title1,
    TResult Function(Title2Component value)? title2,
    TResult Function(Title3Component value)? title3,
    TResult Function(BulletedListComponent value)? bulletedList,
    TResult Function(NumberedList value)? numberedList,
    TResult Function(CitationComponent value)? citation,
    TResult Function(ImageComponent value)? image,
    TResult Function(TodoComponent value)? todo,
  }) {
    return image?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TextComponent value)? text,
    TResult Function(Title1Component value)? title1,
    TResult Function(Title2Component value)? title2,
    TResult Function(Title3Component value)? title3,
    TResult Function(BulletedListComponent value)? bulletedList,
    TResult Function(NumberedList value)? numberedList,
    TResult Function(CitationComponent value)? citation,
    TResult Function(ImageComponent value)? image,
    TResult Function(TodoComponent value)? todo,
    required TResult orElse(),
  }) {
    if (image != null) {
      return image(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageComponentToJson(this);
  }
}

abstract class ImageComponent implements ComponentContent {
  const factory ImageComponent({required String content}) = _$ImageComponent;

  factory ImageComponent.fromJson(Map<String, dynamic> json) =
      _$ImageComponent.fromJson;

  @override
  String get content;
  @override
  @JsonKey(ignore: true)
  $ImageComponentCopyWith<ImageComponent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoComponentCopyWith<$Res>
    implements $ComponentContentCopyWith<$Res> {
  factory $TodoComponentCopyWith(
          TodoComponent value, $Res Function(TodoComponent) then) =
      _$TodoComponentCopyWithImpl<$Res>;
  @override
  $Res call({String content, bool value});
}

/// @nodoc
class _$TodoComponentCopyWithImpl<$Res>
    extends _$ComponentContentCopyWithImpl<$Res>
    implements $TodoComponentCopyWith<$Res> {
  _$TodoComponentCopyWithImpl(
      TodoComponent _value, $Res Function(TodoComponent) _then)
      : super(_value, (v) => _then(v as TodoComponent));

  @override
  TodoComponent get _value => super._value as TodoComponent;

  @override
  $Res call({
    Object? content = freezed,
    Object? value = freezed,
  }) {
    return _then(TodoComponent(
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
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
class _$TodoComponent with DiagnosticableTreeMixin implements TodoComponent {
  const _$TodoComponent(
      {required this.content, this.value = false, String? $type})
      : $type = $type ?? 'todo';

  factory _$TodoComponent.fromJson(Map<String, dynamic> json) =>
      _$$TodoComponentFromJson(json);

  @override
  final String content;
  @JsonKey()
  @override
  final bool value;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ComponentContent.todo(content: $content, value: $value)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ComponentContent.todo'))
      ..add(DiagnosticsProperty('content', content))
      ..add(DiagnosticsProperty('value', value));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TodoComponent &&
            const DeepCollectionEquality().equals(other.content, content) &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(content),
      const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  $TodoComponentCopyWith<TodoComponent> get copyWith =>
      _$TodoComponentCopyWithImpl<TodoComponent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String content) text,
    required TResult Function(String content) title1,
    required TResult Function(String content) title2,
    required TResult Function(String content) title3,
    required TResult Function(String content) bulletedList,
    required TResult Function(String content) numberedList,
    required TResult Function(String content) citation,
    required TResult Function(String content) image,
    required TResult Function(String content, bool value) todo,
  }) {
    return todo(content, value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String content)? text,
    TResult Function(String content)? title1,
    TResult Function(String content)? title2,
    TResult Function(String content)? title3,
    TResult Function(String content)? bulletedList,
    TResult Function(String content)? numberedList,
    TResult Function(String content)? citation,
    TResult Function(String content)? image,
    TResult Function(String content, bool value)? todo,
  }) {
    return todo?.call(content, value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String content)? text,
    TResult Function(String content)? title1,
    TResult Function(String content)? title2,
    TResult Function(String content)? title3,
    TResult Function(String content)? bulletedList,
    TResult Function(String content)? numberedList,
    TResult Function(String content)? citation,
    TResult Function(String content)? image,
    TResult Function(String content, bool value)? todo,
    required TResult orElse(),
  }) {
    if (todo != null) {
      return todo(content, value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TextComponent value) text,
    required TResult Function(Title1Component value) title1,
    required TResult Function(Title2Component value) title2,
    required TResult Function(Title3Component value) title3,
    required TResult Function(BulletedListComponent value) bulletedList,
    required TResult Function(NumberedList value) numberedList,
    required TResult Function(CitationComponent value) citation,
    required TResult Function(ImageComponent value) image,
    required TResult Function(TodoComponent value) todo,
  }) {
    return todo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TextComponent value)? text,
    TResult Function(Title1Component value)? title1,
    TResult Function(Title2Component value)? title2,
    TResult Function(Title3Component value)? title3,
    TResult Function(BulletedListComponent value)? bulletedList,
    TResult Function(NumberedList value)? numberedList,
    TResult Function(CitationComponent value)? citation,
    TResult Function(ImageComponent value)? image,
    TResult Function(TodoComponent value)? todo,
  }) {
    return todo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TextComponent value)? text,
    TResult Function(Title1Component value)? title1,
    TResult Function(Title2Component value)? title2,
    TResult Function(Title3Component value)? title3,
    TResult Function(BulletedListComponent value)? bulletedList,
    TResult Function(NumberedList value)? numberedList,
    TResult Function(CitationComponent value)? citation,
    TResult Function(ImageComponent value)? image,
    TResult Function(TodoComponent value)? todo,
    required TResult orElse(),
  }) {
    if (todo != null) {
      return todo(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TodoComponentToJson(this);
  }
}

abstract class TodoComponent implements ComponentContent {
  const factory TodoComponent({required String content, bool value}) =
      _$TodoComponent;

  factory TodoComponent.fromJson(Map<String, dynamic> json) =
      _$TodoComponent.fromJson;

  @override
  String get content;
  bool get value;
  @override
  @JsonKey(ignore: true)
  $TodoComponentCopyWith<TodoComponent> get copyWith =>
      throw _privateConstructorUsedError;
}
