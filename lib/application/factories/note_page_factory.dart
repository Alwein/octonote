import 'package:easy_localization/easy_localization.dart';
import 'package:octonote/application/utils/app_service.dart';
import 'package:octonote/domain/models/note_page/note_page.dart';
import 'package:uuid/uuid.dart';

class NotePageFactory {
  static NotePage createOne({required int index, required String title}) {
    return NotePage(id: generateRandomId(), index: index, title: title);
  }

  static NotePage createDefault({required int index}) {
    return createOne(index: index, title: tr('note_page.untitled'));
  }

  static String generateRandomId() {
    return isTestEnvironment ? 'test' : const Uuid().v1();
  }
}
