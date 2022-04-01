import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:mocktail/mocktail.dart';
import 'package:octonote/data/entities/note_page_entity/note_page_entity.dart';
import 'package:octonote/data/hive/note_page_hive.dart';
import 'package:octonote/domain/models/note_page/note_page.dart';

class MockHiveInterface extends Mock implements HiveInterface {}

class MockHiveBox extends Mock implements Box {}

void main() {
  late MockHiveInterface mockHiveInterface;
  late MockHiveBox mockHiveBox;
  late NotePageRepositoryHive notePageRepositoryHive;

  setUp(() {
    mockHiveInterface = MockHiveInterface();
    mockHiveBox = MockHiveBox();
    notePageRepositoryHive = NotePageRepositoryHive(hive: mockHiveInterface);

    when(() => mockHiveInterface.openBox(NotePageRepositoryHive.notePageBoxName))
        .thenAnswer((_) async => mockHiveBox);
  });

  const notePage = NotePage(id: "id", index: 0, title: "title");
  group("NotePageRepositoryHive", () {
    test('should init proprely', () async {
      await notePageRepositoryHive.init();
      verify(() => mockHiveInterface.openBox(NotePageRepositoryHive.notePageBoxName)).called(1);
    });

    test('should add a NotePage to hive', () async {
      when(() => mockHiveBox.put(notePage.id, any())).thenAnswer((_) async => {});
      await notePageRepositoryHive.init();
      final result = await notePageRepositoryHive.addNotePage(notePage: notePage);
      verify(() => mockHiveBox.put(notePage.id, any())).called(1);
      expect(result, const Left(unit));
    });

    test('should get a list of NotePage from hive', () async {
      when(() => mockHiveBox.values).thenReturn([NotePageEntity.toEntity(notePage).toDocument()]);
      await notePageRepositoryHive.init();
      final result = await notePageRepositoryHive.getNotePages();
      expect(result.fold((l) => l, (r) => r), const [notePage]);
    });

    test('should remove a NotePage from hive', () async {
      when(() => mockHiveBox.delete(notePage.id)).thenAnswer((_) async => {});
      await notePageRepositoryHive.init();
      final result = await notePageRepositoryHive.removeNotePage(notePage: notePage);
      verify(() => mockHiveBox.delete(notePage.id)).called(1);
      expect(result, const Left(unit));
    });

    test('should update a NotePage from hive', () async {
      when(() => mockHiveBox.put(notePage.id, any())).thenAnswer((_) async => {});
      await notePageRepositoryHive.init();
      final result = await notePageRepositoryHive.updateNotePage(notePage: notePage);
      verify(() => mockHiveBox.put(notePage.id, any())).called(1);
      expect(result, const Left(unit));
    });
  });
}
