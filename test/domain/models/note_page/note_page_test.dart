import 'package:flutter_test/flutter_test.dart';
import 'package:octonote/domain/models/note_page/note_page.dart';

void main() {
  group(("Note Page"), () {
    test("should support value comparison", () {
      const notePage = NotePage(id: "id", index: 0, title: "title");
      expect(notePage, notePage);
    });

    test("copyWith should returns the same object when no propreties are passed", () {
      const notePage = NotePage(id: "id", index: 0, title: "title");
      expect(notePage.copyWith(id: notePage.id), notePage);
    });
  });
}
