import 'package:octonote/domain/models/note_page/note_page.dart';

class NotePageEntity {
  NotePageEntity({required this.id, required this.title, required this.index, this.parentId});

  final String id;
  final String title;
  final int index;
  final String? parentId;

  NotePage toNotePage() {
    return NotePage(
      id: id,
      title: title,
      index: index,
      parentId: parentId,
    );
  }

  Map<String, dynamic> toDocument() {
    return {
      "id": id,
      "title": title,
      "index": index,
      "parentId": parentId,
    };
  }

  static NotePageEntity toEntity(NotePage notePage) {
    return NotePageEntity(
      id: notePage.id,
      title: notePage.title,
      index: notePage.index,
      parentId: notePage.parentId,
    );
  }

  static NotePageEntity fromDocument(Map<String, dynamic> doc) {
    return NotePageEntity(
      id: doc["id"],
      title: doc["title"],
      index: doc["index"],
      parentId: doc["parentId"],
    );
  }
}
