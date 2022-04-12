import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:octonote/domain/models/note_page/note_page.dart';
import 'package:octonote/domain/repositories/note_page/note_page_repository.dart';
import 'package:octonote/domain/usecases/atomic/note_page/note_page_usecases.dart';

class MockNotePageRepository with Mock implements NotePageRepository {}

void main() {
  late NotePageRepository notePageRepository;

  setUp(() {
    notePageRepository = MockNotePageRepository();
  });

  const notePage = NotePage(id: "id", index: 0, title: "title");

  group('Note page usecases', () {
    group('GetNotePages', () {
      test("should get notePages from the repository", () async {
        when(() => notePageRepository.getNotePages())
            .thenAnswer((_) async => const Left([notePage]));
        final useCase = GetNotePages(notePageRepository);

        final result = await useCase();
        expect(result, const Left([notePage]));
        verify(() => notePageRepository.getNotePages()).called(1);
      });
    });
    group('AddNotePage', () {
      test("should add notePage from the repository", () async {
        when(() => notePageRepository.addNotePage(notePage: notePage))
            .thenAnswer((_) async => const Left(unit));
        final useCase = AddNotePage(notePageRepository);

        final result = await useCase(notePage: notePage);
        expect(result, const Left(unit));
        verify(() => notePageRepository.addNotePage(notePage: notePage)).called(1);
      });
    });
    group('RemoveNotePage', () {
      test("should remove notePage from the repository", () async {
        when(() => notePageRepository.removeNotePage(notePage: notePage))
            .thenAnswer((_) async => const Left(unit));
        final useCase = RemoveNotePage(notePageRepository);

        final result = await useCase(notePage: notePage);
        expect(result, const Left(unit));
        verify(() => notePageRepository.removeNotePage(notePage: notePage)).called(1);
      });
    });
    group('UpdateNotePage', () {
      test("should update notePage from the repository", () async {
        when(() => notePageRepository.updateNotePage(notePage: notePage))
            .thenAnswer((_) async => const Left(unit));
        final useCase = UpdateNotePage(notePageRepository);

        final result = await useCase(notePage: notePage);
        expect(result, const Left(unit));
        verify(() => notePageRepository.updateNotePage(notePage: notePage)).called(1);
      });
    });
  });
}
