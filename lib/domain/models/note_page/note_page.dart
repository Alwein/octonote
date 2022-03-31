import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'note_page.freezed.dart';

@freezed
class NotePage with _$NotePage {
  const factory NotePage({
    required String id,
    required int index,
    required String title,
    String? parentId,
  }) = _NotePage;
}
