import 'package:octonote/domain/models/note_page/note_page.dart';
import 'package:uuid/uuid.dart';

class NotePageFactory {
  static NotePage createOne({required int index, required String title}) {
    return NotePage(id: const Uuid().v1(), index: index, title: title);
  }
}
