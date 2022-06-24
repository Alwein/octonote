import 'package:octonote/application/factories/component_factory.dart';
import 'package:octonote/domain/models/component/component.dart';
import 'package:octonote/domain/models/note_page/note_page.dart';
import 'package:octonote/presentation/view_models/component_view_model.dart';
import 'package:super_editor/super_editor.dart';

List<Component> serializeDocumentToComponents(Document doc, NotePage page) {
  final List<Component> componentBuffer = [];
  for (int i = 0; i < doc.nodes.length; i++) {
    componentBuffer.add(
      ComponentFactory.createOne(index: i, page: page, content: doc.nodes[i].toComponentContent),
    );
  }
  return componentBuffer;
}

Document deserializeComponentsToDocuments(List<Component> components) {
  final List<DocumentNode> nodeBuffer = [];
  for (int i = 0; i < components.length; i++) {
    nodeBuffer.add(
      components[i].toDocumentNode,
    );
  }
  if (nodeBuffer.isEmpty) {
    nodeBuffer.add(
      ParagraphNode(
        id: DocumentEditor.createNodeId(),
        text: AttributedText(
          text: 'Bienvenue sur Octonote 🐙',
        ),
        metadata: {
          'blockType': header1Attribution,
        },
      ),
    );
  }
  return MutableDocument(nodes: nodeBuffer);
}
