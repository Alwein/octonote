// ignore_for_file: non_constant_identifier_names

import "package:octonote/domain/models/component/component.dart";

class ComponentEntity {
  const ComponentEntity({
    required this.id,
    required this.pageId,
    required this.index,
    required this.componentContentEntity,
  });

  final String id;
  final String pageId;
  final int index;
  final ComponentContentEntity componentContentEntity;

  Component toComponent() {
    return Component(
      id: id,
      pageId: pageId,
      index: index,
      content: componentContentEntity.toComponentContent(),
    );
  }

  Map<String, dynamic> toDocument() {
    return {
      "id": id,
      "pageId": pageId,
      "index": index,
      "componentEntity": componentContentEntity.toDocument(),
    };
  }

  static ComponentEntity toEntity(Component component) {
    return ComponentEntity(
      id: component.id,
      pageId: component.pageId,
      index: component.index,
      componentContentEntity: ComponentContentEntity.toEntity(component.content),
    );
  }

  static ComponentEntity fromDocument(Map<String, dynamic> doc) {
    return ComponentEntity(
      id: doc["id"] as String,
      pageId: doc["pageId"] as String,
      index: doc["index"] as int,
      componentContentEntity: ComponentContentEntity.fromDocument(
        Map<String, dynamic>.from(doc["componentEntity"] as Map<dynamic, dynamic>),
      ),
    );
  }
}

class ComponentContentEntity {
  ComponentContentEntity({required this.type, this.content, this.value});

  final ComponentType type;
  final String? content;
  final bool? value;

  static String KEY_TYPE = "type";
  static String KEY_CONTENT = "content";
  static String KEY_VALUE = "value";

  ComponentContent toComponentContent() {
    switch (type) {
      case ComponentType.text:
        return ComponentContent.text(content: content!);
      case ComponentType.title1:
        return ComponentContent.title1(content: content!);
      case ComponentType.title2:
        return ComponentContent.title2(content: content!);
      case ComponentType.title3:
        return ComponentContent.title3(content: content!);
      case ComponentType.bulletedList:
        return ComponentContent.bulletedList(content: content!);
      case ComponentType.citation:
        return ComponentContent.citation(content: content!);
      case ComponentType.todo:
        return ComponentContent.todo(content: content!, value: value!);
      case ComponentType.image:
        return ComponentContent.image(content: content!);
      case ComponentType.numberedList:
        return ComponentContent.numberedList(content: content!);
    }
  }

  Map<String, dynamic> toDocument() {
    return {
      KEY_TYPE: type.toString(),
      KEY_CONTENT: content,
      KEY_VALUE: value,
    };
  }

  static ComponentContentEntity toEntity(ComponentContent componentContent) {
    return componentContent.map(
      text: (componentContent) => ComponentContentEntity(
        type: ComponentType.text,
        content: componentContent.content,
      ),
      title1: (componentContent) => ComponentContentEntity(
        type: ComponentType.title1,
        content: componentContent.content,
      ),
      title2: (componentContent) => ComponentContentEntity(
        type: ComponentType.title2,
        content: componentContent.content,
      ),
      title3: (componentContent) => ComponentContentEntity(
        type: ComponentType.title3,
        content: componentContent.content,
      ),
      bulletedList: (componentContent) => ComponentContentEntity(
        type: ComponentType.bulletedList,
        content: componentContent.content,
      ),
      citation: (componentContent) => ComponentContentEntity(
        type: ComponentType.citation,
        content: componentContent.content,
      ),
      todo: (componentContent) => ComponentContentEntity(
        type: ComponentType.todo,
        content: componentContent.content,
        value: componentContent.value,
      ),
      image: (componentContent) => ComponentContentEntity(
        type: ComponentType.image,
        content: componentContent.content,
      ),
      numberedList: (componentContent) => ComponentContentEntity(
        type: ComponentType.numberedList,
        content: componentContent.content,
      ),
    );
  }

  static ComponentContentEntity fromDocument(Map<String, dynamic> doc) {
    return ComponentContentEntity(
      type: ComponentTypeExt.fromString(doc[KEY_TYPE] as String),
      content: doc[KEY_CONTENT] as String?,
      value: doc[KEY_VALUE] as bool?,
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
  image,
  numberedList,
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
    } else if (value == ComponentType.image.toString()) {
      return ComponentType.image;
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
      image: (_) => ComponentType.image,
      numberedList: (_) => ComponentType.numberedList,
    );
  }
}
