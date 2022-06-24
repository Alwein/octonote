import 'package:flutter/material.dart';
import 'package:octonote/domain/models/component/component.dart';
import 'package:octonote/presentation/octo_editor/widgets/tasks.dart';
import 'package:super_editor/super_editor.dart';

extension ComponentViewModel on Component {
  DocumentNode get toDocumentNode => content.map(
        text: (comp) => ParagraphNode(
          id: DocumentEditor.createNodeId(),
          text: AttributedText(
            text: comp.content,
          ),
        ),
        title1: (comp) => ParagraphNode(
          id: DocumentEditor.createNodeId(),
          text: AttributedText(
            text: comp.content,
          ),
          metadata: {
            'blockType': header1Attribution,
          },
        ),
        title2: (comp) => ParagraphNode(
          id: DocumentEditor.createNodeId(),
          text: AttributedText(
            text: comp.content,
          ),
          metadata: {
            'blockType': header2Attribution,
          },
        ),
        title3: (comp) => ParagraphNode(
          id: DocumentEditor.createNodeId(),
          text: AttributedText(
            text: comp.content,
          ),
          metadata: {
            'blockType': header3Attribution,
          },
        ),
        bulletedList: (comp) => ListItemNode.unordered(
          id: DocumentEditor.createNodeId(),
          text: AttributedText(
            text: comp.content,
          ),
        ),
        numberedList: (comp) => ListItemNode.ordered(
          id: DocumentEditor.createNodeId(),
          text: AttributedText(
            text: comp.content,
          ),
        ),
        citation: (comp) => ParagraphNode(
          id: DocumentEditor.createNodeId(),
          text: AttributedText(
            text: comp.content,
          ),
        ),
        image: (comp) => ImageNode(
          id: id,
          imageUrl: comp.content,
          metadata: const SingleColumnLayoutComponentStyles(
            width: double.infinity,
            padding: EdgeInsets.zero,
          ).toMetadata(),
        ),
        todo: (comp) => TaskNode(
          id: DocumentEditor.createNodeId(),
          isComplete: false,
          text: AttributedText(
            text: comp.content,
          ),
        ),
      );
}

extension NodeToComponent on DocumentNode {
  ComponentContent get toComponentContent {
    if (this is ImageNode) {
      final ImageNode node = this as ImageNode;
      return ComponentContent.image(content: node.imageUrl);
    } else if (this is HorizontalRuleNode) {
      return const ComponentContent.text(content: "---");
    } else if (this is ListItemNode) {
      final ListItemNode node = this as ListItemNode;
      return node.type == ListItemType.unordered
          ? ComponentContent.bulletedList(content: node.text.text)
          : ComponentContent.numberedList(content: node.text.text);
    } else if (this is ParagraphNode) {
      final ParagraphNode node = this as ParagraphNode;
      final Attribution? blockType = node.getMetadataValue('blockType') as Attribution?;

      if (blockType == header1Attribution) {
        return ComponentContent.title1(content: node.text.text);
      } else if (blockType == header2Attribution) {
        return ComponentContent.title2(content: node.text.text);
      } else if (blockType == header3Attribution) {
        return ComponentContent.title3(content: node.text.text);
      } else if (blockType == header4Attribution) {
        return ComponentContent.title3(content: node.text.text);
      } else if (blockType == header5Attribution) {
        return ComponentContent.title3(content: node.text.text);
      } else if (blockType == header6Attribution) {
        return ComponentContent.title3(content: node.text.text);
      } else if (blockType == blockquoteAttribution) {
        return ComponentContent.text(content: node.text.text);
      } else if (blockType == codeAttribution) {
        return ComponentContent.text(content: node.text.text);
      } else {
        return ComponentContent.text(content: node.text.text);
      }
    } else {
      return const ComponentContent.text(content: '');
    }
  }
}
