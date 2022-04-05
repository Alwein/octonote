import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'component.freezed.dart';
part 'component.g.dart';

@freezed
class Component with _$Component {
  const factory Component({
    required String id,
    required String pageId,
    required int index,
    required ComponentContent content,
  }) = _Component;

  factory Component.fromJson(Map<String, dynamic> json) => _$ComponentFromJson(json);
}

@freezed
class ComponentContent with _$ComponentContent {
  const factory ComponentContent.text({required String text}) = Text;
  const factory ComponentContent.title1({required String text}) = Title1;
  const factory ComponentContent.title2({required String text}) = Title2;
  const factory ComponentContent.title3({required String text}) = Title3;
  const factory ComponentContent.bulletedList({required String text}) = BulletedList;
  const factory ComponentContent.citation({required String text}) = Citation;
  const factory ComponentContent.todo({required String text, @Default(false) bool value}) = Todo;

  factory ComponentContent.fromJson(Map<String, dynamic> json) => _$ComponentContentFromJson(json);
}
