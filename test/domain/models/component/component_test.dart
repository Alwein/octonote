import 'package:flutter_test/flutter_test.dart';
import 'package:octonote/domain/models/component/component.dart';

void main() {
  group("Component", () {
    test("should support value comparison", () {
      const componentContent = ComponentContent.text(content: "text");

      const component = Component(
        id: "id",
        pageId: "pageId",
        index: 0,
        content: componentContent,
      );
      expect(component, component);
    });

    test("copyWith should returns the same object when no propreties are passed", () {
      const componentContent = ComponentContent.text(content: "text");

      const component = Component(
        id: "id",
        pageId: "pageId",
        index: 0,
        content: componentContent,
      );
      expect(component.copyWith(id: component.id), component);
    });
  });

  group("ComponentContent", () {
    test("should support value comparison", () {
      const componentContent = ComponentContent.text(content: "text");
      expect(componentContent, componentContent);
    });

    test("copyWith should returns the same object when no propreties are passed", () {
      const componentContent = ComponentContent.text(content: "text");
      expect(componentContent.copyWith(content: componentContent.content), componentContent);
    });
  });
}
