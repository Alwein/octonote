import 'package:octonote/application/utils/app_service.dart';
import 'package:octonote/domain/models/component/component.dart';
import 'package:octonote/domain/models/note_page/note_page.dart';
import 'package:uuid/uuid.dart';

class ComponentFactory {
  static Component createOne({
    required int index,
    required NotePage page,
    ComponentContent content = const ComponentContent.text(text: ""),
  }) {
    return Component(
      id: generateRandomId(),
      pageId: page.id,
      index: index,
      content: content,
    );
  }

  static String generateRandomId() {
    return isTestEnvironment ? 'test' : const Uuid().v1();
  }
}
