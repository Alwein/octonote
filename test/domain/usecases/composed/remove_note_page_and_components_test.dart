import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:octonote/domain/models/app_error/app_error.dart';
import 'package:octonote/domain/models/component/component.dart';
import 'package:octonote/domain/models/note_page/note_page.dart';
import 'package:octonote/domain/usecases/usecases.dart';

class MockRemoveNotePage with Mock implements RemoveNotePage {}

class MockRemoveComponent with Mock implements RemoveComponent {}

class MockGetComponents with Mock implements GetComponents {}

class NotePageFake extends Fake implements NotePage {}

class ComponentFake extends Fake implements Component {}

void main() {
  late RemoveNotePage removeNotePage;
  late RemoveComponent removeComponent;
  late GetComponents getComponents;

  setUp(() {
    removeNotePage = MockRemoveNotePage();
    removeComponent = MockRemoveComponent();
    getComponents = MockGetComponents();
  });

  setUpAll(() {
    registerFallbackValue(NotePageFake());
    registerFallbackValue(ComponentFake());
  });

  const notePage = NotePage(id: "id", index: 0, title: "title");

  const componentContent = ComponentContent.text(text: "text");

  final componentList = List.generate(
    3,
    (i) => Component(
      id: "id$i",
      pageId: notePage.id,
      index: i,
      content: componentContent,
    ),
  );

  group('RemoveNotePageAndComponents', () {
    test("should remove notePage and its Components ", () async {
      when(() => getComponents(notePage: any(named: "notePage")))
          .thenAnswer((_) async => Left(componentList));
      when(() => removeNotePage(notePage: any(named: "notePage")))
          .thenAnswer((_) async => const Left(unit));
      when(() => removeComponent(component: any(named: "component")))
          .thenAnswer((_) async => const Left(unit));

      final useCase = RemoveNotePageAndComponents(
        getComponents: getComponents,
        removeNotePage: removeNotePage,
        removeComponent: removeComponent,
      );

      final result = await useCase(notePage: notePage);
      expect(result, const Left(unit));
    });
    test("should return appError on getComponents error ", () async {
      when(() => getComponents(notePage: any(named: "notePage")))
          .thenAnswer((_) async => Right(AppError()));
      when(() => removeNotePage(notePage: any(named: "notePage")))
          .thenAnswer((_) async => const Left(unit));
      when(() => removeComponent(component: any(named: "component")))
          .thenAnswer((_) async => const Left(unit));

      final useCase = RemoveNotePageAndComponents(
        getComponents: getComponents,
        removeNotePage: removeNotePage,
        removeComponent: removeComponent,
      );

      final result = await useCase(notePage: notePage);
      expect(result.isRight(), true);
    });
    test("should return appError on removeNotePage error ", () async {
      when(() => getComponents(notePage: any(named: "notePage")))
          .thenAnswer((_) async => Left(componentList));
      when(() => removeNotePage(notePage: any(named: "notePage")))
          .thenAnswer((_) async => Right(AppError()));
      when(() => removeComponent(component: any(named: "component")))
          .thenAnswer((_) async => const Left(unit));

      final useCase = RemoveNotePageAndComponents(
        getComponents: getComponents,
        removeNotePage: removeNotePage,
        removeComponent: removeComponent,
      );

      final result = await useCase(notePage: notePage);
      expect(result.isRight(), true);
    });
    test("should return appError on removeComponent error ", () async {
      when(() => getComponents(notePage: any(named: "notePage")))
          .thenAnswer((_) async => Left(componentList));
      when(() => removeNotePage(notePage: any(named: "notePage")))
          .thenAnswer((_) async => const Left(unit));
      when(() => removeComponent(component: any(named: "component")))
          .thenAnswer((_) async => Right(AppError()));

      final useCase = RemoveNotePageAndComponents(
        getComponents: getComponents,
        removeNotePage: removeNotePage,
        removeComponent: removeComponent,
      );

      final result = await useCase(notePage: notePage);
      expect(result.isRight(), true);
    });
  });
}
