import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'note_page.freezed.dart';

@freezed
class NotePage with _$NotePage {
  const factory NotePage({
    required String id,
    required int index,
    required String title,
    String? parentId,
  }) = _NotePage;

  const factory NotePage.empty({
    @Default('') String id,
    @Default(0) int index,
    @Default('') String title,
    String? parentId,
  }) = _EmptyNotePage;
}
