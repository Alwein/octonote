import 'package:octonote/domain/models/component/component.dart';
import 'package:octonote/domain/models/note_page/note_page.dart';
import 'package:uuid/uuid.dart';

class ComponentFactory {
  static Component createOne({
    required int index,
    required NotePage page,
    required ComponentContent content,
  }) {
    return Component(
      id: const Uuid().v1(),
      pageId: page.id,
      index: index,
      content: content,
    );
  }
}
