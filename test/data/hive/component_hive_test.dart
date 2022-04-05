import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:mocktail/mocktail.dart';
import 'package:octonote/data/entities/component_entity/component_entity.dart';
import 'package:octonote/data/hive/component_hive.dart';
import 'package:octonote/domain/models/component/component.dart';
import 'package:octonote/domain/models/note_page/note_page.dart';

class MockHiveInterface extends Mock implements HiveInterface {}

class MockHiveBox extends Mock implements Box {}

void main() {
  late MockHiveInterface mockHiveInterface;
  late MockHiveBox mockHiveBox;
  late ComponentRepositoryHive componentRepositoryHive;

  setUp(() {
    mockHiveInterface = MockHiveInterface();
    mockHiveBox = MockHiveBox();
    componentRepositoryHive = ComponentRepositoryHive(hive: mockHiveInterface);

    when(() => mockHiveInterface.openBox(ComponentRepositoryHive.componentBoxName))
        .thenAnswer((_) async => mockHiveBox);
  });
  const notePage = NotePage(id: "id", index: 0, title: "title");

  const componentContent = ComponentContent.text(text: "text");

  final component = Component(
    id: "id",
    pageId: notePage.id,
    index: 0,
    content: componentContent,
  );

  group("ComponentRepositoryHive", () {
    test('should init proprely', () async {
      await componentRepositoryHive.initializeOrNot();
      verify(() => mockHiveInterface.openBox(ComponentRepositoryHive.componentBoxName)).called(1);
      // expect(result, const Left(unit));
    });

    test('should add a Component to hive', () async {
      when(() => mockHiveBox.put(component.id, any())).thenAnswer((_) async => {});
      final result = await componentRepositoryHive.addComponent(component: component);
      verify(() => mockHiveBox.put(component.id, any())).called(1);
      expect(result, const Left(unit));
    });

    test('should get a list of Component of a page from hive', () async {
      when(() => mockHiveBox.values).thenReturn([ComponentEntity.toEntity(component).toDocument()]);
      final result = await componentRepositoryHive.getComponents(notePage: notePage);
      expect(result.fold((l) => l, (r) => r), [component]);
    });

    test('should remove a Component from hive', () async {
      when(() => mockHiveBox.delete(component.id)).thenAnswer((_) async => {});
      final result = await componentRepositoryHive.removeComponent(component: component);
      verify(() => mockHiveBox.delete(component.id)).called(1);
      expect(result, const Left(unit));
    });

    test('should update a Component from hive', () async {
      when(() => mockHiveBox.put(component.id, any())).thenAnswer((_) async => {});
      final result = await componentRepositoryHive.updateComponent(component: component);
      verify(() => mockHiveBox.put(component.id, any())).called(1);
      expect(result, const Left(unit));
    });
  });
}
