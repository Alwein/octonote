import 'package:flutter/rendering.dart';
import 'package:super_editor/super_editor.dart';

Document createInitialDocument() {
  return MutableDocument(
    nodes: [
      ImageNode(
        id: "1",
        imageUrl: 'https://www.consoglobe.com/wp-content/uploads/2019/02/poulpe-ban_shutterstock_726155656.jpg',
        metadata: const SingleColumnLayoutComponentStyles(
          width: double.infinity,
          padding: EdgeInsets.zero,
        ).toMetadata(),
      ),
      ParagraphNode(
        id: DocumentEditor.createNodeId(),
        text: AttributedText(
          text: 'Bienvenue sur Octonote 🐙',
        ),
        metadata: {
          'blockType': header1Attribution,
        },
      ),
      ParagraphNode(
        id: DocumentEditor.createNodeId(),
        text: AttributedText(
          text:
              "Octonote est un logiciel de prises de notes, qui vous permet d'enregistrer des textes, documents, photos et bien plus pour organiser votre producivité.",
        ),
      ),
      ParagraphNode(
        id: DocumentEditor.createNodeId(),
        text: AttributedText(
          text: 'Open source et fait avec Flutter 📦',
        ),
        metadata: {
          'blockType': header2Attribution,
        },
      ),
      ListItemNode.unordered(
        id: DocumentEditor.createNodeId(),
        text: AttributedText(
          text: 'Octonote est totalement open source.',
        ),
      ),
      ListItemNode.unordered(
        id: DocumentEditor.createNodeId(),
        text: AttributedText(
          text: 'Enitèrement réalisé en Flutter pour supporter toutes les plateformes (mobile, web et destop)',
        ),
      ),
      ParagraphNode(
        id: DocumentEditor.createNodeId(),
        text: AttributedText(
          text: 'Prochaines étapes 🚀',
        ),
        metadata: {
          'blockType': header2Attribution,
        },
      ),
      TaskNode(
        id: DocumentEditor.createNodeId(),
        isComplete: false,
        text: AttributedText(
          text: "Intégrer un éditeur de texte",
        ),
      ),
      TaskNode(
        id: DocumentEditor.createNodeId(),
        isComplete: false,
        text: AttributedText(
          text: 'Désérialiser les objets du domain en viewModel',
        ),
      ),
      TaskNode(
        id: DocumentEditor.createNodeId(),
        isComplete: false,
        text: AttributedText(
          text: "Créer une interface de sélection des composants",
        ),
      ),
      TaskNode(
        id: DocumentEditor.createNodeId(),
        isComplete: false,
        text: AttributedText(
          text: "Enregistrer dynamiquement les modifications sur le back-end",
        ),
      ),
      ParagraphNode(
        id: DocumentEditor.createNodeId(),
        text: AttributedText(
          text: 'Cette semaine :',
        ),
        metadata: {
          'blockType': header2Attribution,
        },
      ),
    ],
  );
}
