import 'package:flutter/material.dart';
import 'package:octonote/domain/models/component/component.dart';
import 'package:octonote/presentation/octo_editor/widgets/tasks.dart';
import 'package:super_editor/super_editor.dart';

extension ComponentViewModel on ComponentContent {
  DocumentNode get toDocumentNode => map(
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
          id: comp.content,
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
