// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Component _$$_ComponentFromJson(Map<String, dynamic> json) => _$_Component(
      id: json['id'] as String,
      pageId: json['pageId'] as String,
      index: json['index'] as int,
      content:
          ComponentContent.fromJson(json['content'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ComponentToJson(_$_Component instance) =>
    <String, dynamic>{
      'id': instance.id,
      'pageId': instance.pageId,
      'index': instance.index,
      'content': instance.content,
    };

_$TextComponent _$$TextComponentFromJson(Map<String, dynamic> json) =>
    _$TextComponent(
      text: json['text'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$TextComponentToJson(_$TextComponent instance) =>
    <String, dynamic>{
      'text': instance.text,
      'runtimeType': instance.$type,
    };

_$Title1Component _$$Title1ComponentFromJson(Map<String, dynamic> json) =>
    _$Title1Component(
      text: json['text'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$Title1ComponentToJson(_$Title1Component instance) =>
    <String, dynamic>{
      'text': instance.text,
      'runtimeType': instance.$type,
    };

_$Title2Component _$$Title2ComponentFromJson(Map<String, dynamic> json) =>
    _$Title2Component(
      text: json['text'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$Title2ComponentToJson(_$Title2Component instance) =>
    <String, dynamic>{
      'text': instance.text,
      'runtimeType': instance.$type,
    };

_$Title3Component _$$Title3ComponentFromJson(Map<String, dynamic> json) =>
    _$Title3Component(
      text: json['text'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$Title3ComponentToJson(_$Title3Component instance) =>
    <String, dynamic>{
      'text': instance.text,
      'runtimeType': instance.$type,
    };

_$BulletedListComponent _$$BulletedListComponentFromJson(
        Map<String, dynamic> json) =>
    _$BulletedListComponent(
      text: json['text'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$BulletedListComponentToJson(
        _$BulletedListComponent instance) =>
    <String, dynamic>{
      'text': instance.text,
      'runtimeType': instance.$type,
    };

_$CitationComponent _$$CitationComponentFromJson(Map<String, dynamic> json) =>
    _$CitationComponent(
      text: json['text'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$CitationComponentToJson(_$CitationComponent instance) =>
    <String, dynamic>{
      'text': instance.text,
      'runtimeType': instance.$type,
    };

_$TodoComponent _$$TodoComponentFromJson(Map<String, dynamic> json) =>
    _$TodoComponent(
      text: json['text'] as String,
      value: json['value'] as bool? ?? false,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$TodoComponentToJson(_$TodoComponent instance) =>
    <String, dynamic>{
      'text': instance.text,
      'value': instance.value,
      'runtimeType': instance.$type,
    };
