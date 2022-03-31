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

_$Text _$$TextFromJson(Map<String, dynamic> json) => _$Text(
      text: json['text'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$TextToJson(_$Text instance) => <String, dynamic>{
      'text': instance.text,
      'runtimeType': instance.$type,
    };

_$Title1 _$$Title1FromJson(Map<String, dynamic> json) => _$Title1(
      text: json['text'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$Title1ToJson(_$Title1 instance) => <String, dynamic>{
      'text': instance.text,
      'runtimeType': instance.$type,
    };

_$Title2 _$$Title2FromJson(Map<String, dynamic> json) => _$Title2(
      text: json['text'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$Title2ToJson(_$Title2 instance) => <String, dynamic>{
      'text': instance.text,
      'runtimeType': instance.$type,
    };

_$Title3 _$$Title3FromJson(Map<String, dynamic> json) => _$Title3(
      text: json['text'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$Title3ToJson(_$Title3 instance) => <String, dynamic>{
      'text': instance.text,
      'runtimeType': instance.$type,
    };

_$BulletedList _$$BulletedListFromJson(Map<String, dynamic> json) =>
    _$BulletedList(
      text: json['text'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$BulletedListToJson(_$BulletedList instance) =>
    <String, dynamic>{
      'text': instance.text,
      'runtimeType': instance.$type,
    };

_$Citation _$$CitationFromJson(Map<String, dynamic> json) => _$Citation(
      text: json['text'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$CitationToJson(_$Citation instance) =>
    <String, dynamic>{
      'text': instance.text,
      'runtimeType': instance.$type,
    };

_$Todo _$$TodoFromJson(Map<String, dynamic> json) => _$Todo(
      text: json['text'] as String,
      value: json['value'] as bool? ?? false,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$TodoToJson(_$Todo instance) => <String, dynamic>{
      'text': instance.text,
      'value': instance.value,
      'runtimeType': instance.$type,
    };
