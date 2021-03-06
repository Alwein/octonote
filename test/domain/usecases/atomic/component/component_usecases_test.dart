import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:octonote/domain/models/component/component.dart';
import 'package:octonote/domain/models/note_page/note_page.dart';
import 'package:octonote/domain/repositories/component/component_repository.dart';
import 'package:octonote/domain/usecases/atomic/component/component_usecases.dart';

class MockComponentRepository with Mock implements ComponentRepository {}

void main() {
  late ComponentRepository componentRepository;

  setUp(() {
    componentRepository = MockComponentRepository();
  });

  const componentContent = ComponentContent.text(content: "text");

  const component = Component(
    id: "id",
    pageId: "pageId",
    index: 0,
    content: componentContent,
  );

  const notePage = NotePage(id: "id", index: 0, title: "title");

  group('Atomic Component usecases', () {
    group('GetComponents', () {
      test("should get components from the repository", () async {
        when(() => componentRepository.getComponents(notePage: notePage))
            .thenAnswer((_) async => const Left([component]));
        final useCase = GetComponents(componentRepository);

        final result = await useCase(notePage: notePage);
        expect(result, const Left([component]));
        verify(() => componentRepository.getComponents(notePage: notePage)).called(1);
      });
    });
    group('AddComponent', () {
      test("should add component from the repository", () async {
        when(() => componentRepository.addComponent(component: component))
            .thenAnswer((_) async => const Left(unit));
        final useCase = AddComponent(componentRepository);

        final result = await useCase(component: component);
        expect(result, const Left(unit));
        verify(() => componentRepository.addComponent(component: component)).called(1);
      });
    });
    group('RemoveComponent', () {
      test("should remove component from the repository", () async {
        when(() => componentRepository.removeComponent(component: component))
            .thenAnswer((_) async => const Left(unit));
        final useCase = RemoveComponent(componentRepository);

        final result = await useCase(component: component);
        expect(result, const Left(unit));
        verify(() => componentRepository.removeComponent(component: component)).called(1);
      });
    });
    group('UpdateComponent', () {
      test("should update component from the repository", () async {
        when(() => componentRepository.updateComponent(component: component))
            .thenAnswer((_) async => const Left(unit));
        final useCase = UpdateComponent(componentRepository);

        final result = await useCase(component: component);
        expect(result, const Left(unit));
        verify(() => componentRepository.updateComponent(component: component)).called(1);
      });
    });
  });
}
