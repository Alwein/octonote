import "package:octonote/domain/models/component/component.dart";

class ComponentEntity {
  const ComponentEntity({
    required this.id,
    required this.pageId,
    required this.index,
    required this.componentEntity,
  });

  final String id;
  final String pageId;
  final int index;
  final ComponentContentEntity componentEntity;

  Component toComponent() {
    return Component(
      id: id,
      pageId: pageId,
      index: index,
      content: componentEntity.toComponentContent(),
    );
  }

  Map<String, dynamic> toDocument() {
    return {
      "id": id,
      "pageId": pageId,
      "index": index,
      "componentEntity": componentEntity.toDocument(),
    };
  }

  static ComponentEntity toEntity(Component component) {
    return ComponentEntity(
      id: component.id,
      pageId: component.pageId,
      index: component.index,
      componentEntity: ComponentContentEntity.toEntity(component.content),
    );
  }

  static ComponentEntity fromDocument(Map<String, dynamic> doc) {
    return ComponentEntity(
      id: doc["id"] as String,
      pageId: doc["pageId"] as String,
      index: doc["index"] as int,
      componentEntity:
          ComponentContentEntity.fromDocument(doc["componentEntity"] as Map<String, dynamic>),
    );
  }
}

class ComponentContentEntity {
  ComponentContentEntity({required this.type, this.text, this.value});

  final ComponentType type;
  final String? text;
  final bool? value;

  ComponentContent toComponentContent() {
    switch (type) {
      case ComponentType.text:
        return ComponentContent.text(text: text!);
      case ComponentType.title1:
        return ComponentContent.title1(text: text!);
      case ComponentType.title2:
        return ComponentContent.title2(text: text!);
      case ComponentType.title3:
        return ComponentContent.title3(text: text!);
      case ComponentType.bulletedList:
        return ComponentContent.bulletedList(text: text!);
      case ComponentType.citation:
        return ComponentContent.citation(text: text!);
      case ComponentType.todo:
        return ComponentContent.todo(text: text!, value: value!);
    }
  }

  Map<String, dynamic> toDocument() {
    return {
      "type": type.toString(),
      "text": text,
      "value": value,
    };
  }

  static ComponentContentEntity toEntity(ComponentContent componentContent) {
    return componentContent.map(
      text: (componentContent) => ComponentContentEntity(
        type: ComponentType.text,
        text: componentContent.text,
      ),
      title1: (componentContent) => ComponentContentEntity(
        type: ComponentType.title1,
        text: componentContent.text,
      ),
      title2: (componentContent) => ComponentContentEntity(
        type: ComponentType.title2,
        text: componentContent.text,
      ),
      title3: (componentContent) => ComponentContentEntity(
        type: ComponentType.title3,
        text: componentContent.text,
      ),
      bulletedList: (componentContent) => ComponentContentEntity(
        type: ComponentType.bulletedList,
        text: componentContent.text,
      ),
      citation: (componentContent) => ComponentContentEntity(
        type: ComponentType.citation,
        text: componentContent.text,
      ),
      todo: (componentContent) => ComponentContentEntity(
        type: ComponentType.todo,
        text: componentContent.text,
        value: componentContent.value,
      ),
    );
  }

  static ComponentContentEntity fromDocument(Map<String, dynamic> doc) {
    return ComponentContentEntity(
      type: ComponentTypeExt.fromString(doc["type"] as String),
      text: doc["text"] as String,
      value: doc["value"] as bool,
    );
  }
}

enum ComponentType {
  text,
  title1,
  title2,
  title3,
  bulletedList,
  citation,
  todo,
}

extension ComponentTypeExt on ComponentType {
  static ComponentType fromString(String value) {
    if (value == ComponentType.text.toString()) {
      return ComponentType.text;
    } else if (value == ComponentType.title1.toString()) {
      return ComponentType.title1;
    } else if (value == ComponentType.title2.toString()) {
      return ComponentType.title2;
    } else if (value == ComponentType.title3.toString()) {
      return ComponentType.title3;
    } else if (value == ComponentType.bulletedList.toString()) {
      return ComponentType.bulletedList;
    } else if (value == ComponentType.citation.toString()) {
      return ComponentType.citation;
    } else if (value == ComponentType.todo.toString()) {
      return ComponentType.todo;
    } else {
      return ComponentType.text;
    }
  }

  static ComponentType fromComponentContent(ComponentContent componentContent) {
    return componentContent.map(
      text: (_) => ComponentType.text,
      title1: (_) => ComponentType.title1,
      title2: (_) => ComponentType.title2,
      title3: (_) => ComponentType.title3,
      bulletedList: (_) => ComponentType.bulletedList,
      citation: (_) => ComponentType.citation,
      todo: (_) => ComponentType.todo,
    );
  }
}
