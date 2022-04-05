import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:octonote/domain/models/app_error/app_error.dart';
import 'package:octonote/domain/models/note_page/note_page.dart';
import 'package:octonote/domain/usecases/note_page/note_page_usecases.dart';
import 'package:octonote/presentation/menu/bloc/menu_bloc.dart';

class MockAddNotePage extends Mock implements AddNotePage {}

class MockUpdateNotePage extends Mock implements UpdateNotePage {}

class MockRemoveNotePage extends Mock implements RemoveNotePage {}

class MockGetNotePages extends Mock implements GetNotePages {}

void main() {
  group('MenuBloc', () {
    late AddNotePage addNotePage;
    late UpdateNotePage updateNotePage;
    late RemoveNotePage removeNotePage;
    late GetNotePages getNotePages;

    setUp(() {
      addNotePage = MockAddNotePage();
      updateNotePage = MockUpdateNotePage();
      removeNotePage = MockRemoveNotePage();
      getNotePages = MockGetNotePages();
    });

    MenuBloc _buildBloc() {
      return MenuBloc(
        addNotePage: addNotePage,
        updateNotePage: updateNotePage,
        removeNotePage: removeNotePage,
        getNotePages: getNotePages,
      );
    }

    const exampleNotePage = NotePage(id: "id", index: 0, title: "title");

    test('default state should have initial status and empty list of NotePage', () {
      expect(
        _buildBloc().state,
        const MenuState(notePages: [], status: MenuStatus.initial()),
      );
    });

    group('fetchStarted', () {
      blocTest<MenuBloc, MenuState>(
        'should emit MenuStatus.success() and a list of NotePage',
        setUp: () {
          when(() => getNotePages()).thenAnswer((_) async => const Left([exampleNotePage]));
        },
        build: () => _buildBloc(),
        act: (bloc) => bloc.add(const MenuEvent.fetchStarted()),
        expect: () => const [
          MenuState(status: MenuStatus.fetchInProgress()),
          MenuState(status: MenuStatus.success(), notePages: [exampleNotePage]),
        ],
      );
      blocTest<MenuBloc, MenuState>(
        'should emit MenuStatus.error() when getNotePages fails',
        setUp: () {
          when(() => getNotePages()).thenAnswer((_) async => Right(AppError()));
        },
        build: () => _buildBloc(),
        act: (bloc) => bloc.add(const MenuEvent.fetchStarted()),
        expect: () => const [
          MenuState(status: MenuStatus.fetchInProgress()),
          MenuState(status: MenuStatus.error(), notePages: []),
        ],
      );
    });

    group("addPage", () {
      blocTest<MenuBloc, MenuState>(
        'should emit same state with a new page',
        setUp: () {
          when(() => addNotePage(notePage: exampleNotePage))
              .thenAnswer((_) async => const Left(unit));
        },
        build: () => _buildBloc(),
        seed: () => const MenuState(status: MenuStatus.success(), notePages: []),
        act: (bloc) => bloc.add(const MenuEvent.addPage(notePage: exampleNotePage)),
        expect: () => const [
          MenuState(status: MenuStatus.success(), notePages: [exampleNotePage]),
        ],
      );

      blocTest<MenuBloc, MenuState>(
        'should emit nothing when addNotePage fails',
        setUp: () {
          when(() => addNotePage(notePage: exampleNotePage)).thenAnswer(
            (_) async => Right(AppError()),
          );
        },
        build: () => _buildBloc(),
        seed: () => const MenuState(status: MenuStatus.success(), notePages: []),
        act: (bloc) => bloc.add(const MenuEvent.addPage(notePage: exampleNotePage)),
        expect: () => const [],
      );
    });
    group("updatePage", () {
      final NotePage updatedNotePage = exampleNotePage.copyWith(title: 'updated NotePage');
      blocTest<MenuBloc, MenuState>(
        'should emit same state with an updated list of page',
        setUp: () {
          when(
            () => updateNotePage(notePage: updatedNotePage),
          ).thenAnswer((_) async => const Left(unit));
        },
        build: () => _buildBloc(),
        seed: () => const MenuState(status: MenuStatus.success(), notePages: [exampleNotePage]),
        act: (bloc) => bloc.add(MenuEvent.updatePage(notePage: updatedNotePage)),
        expect: () => [
          MenuState(status: const MenuStatus.success(), notePages: [updatedNotePage]),
        ],
      );

      blocTest<MenuBloc, MenuState>(
        'should emit nothing when updateNotePage fails',
        setUp: () {
          when(() => updateNotePage(notePage: updatedNotePage)).thenAnswer(
            (_) async => Right(AppError()),
          );
        },
        build: () => _buildBloc(),
        seed: () => const MenuState(status: MenuStatus.success(), notePages: [exampleNotePage]),
        act: (bloc) => bloc.add(MenuEvent.updatePage(notePage: updatedNotePage)),
        expect: () => const [],
      );
    });
    group("deletePage", () {
      blocTest<MenuBloc, MenuState>(
        'should emit same state with one page less',
        setUp: () {
          when(() => removeNotePage(notePage: exampleNotePage)).thenAnswer(
            (_) async => const Left(unit),
          );
        },
        build: () => _buildBloc(),
        seed: () => const MenuState(status: MenuStatus.success(), notePages: [exampleNotePage]),
        act: (bloc) => bloc.add(const MenuEvent.removePage(notePage: exampleNotePage)),
        expect: () => const [
          MenuState(status: MenuStatus.success(), notePages: []),
        ],
      );

      blocTest<MenuBloc, MenuState>(
        'should emit nothing when removeNotePage fails',
        setUp: () {
          when(() => removeNotePage(notePage: exampleNotePage)).thenAnswer(
            (_) async => Right(AppError()),
          );
        },
        build: () => _buildBloc(),
        seed: () => const MenuState(status: MenuStatus.success(), notePages: [exampleNotePage]),
        act: (bloc) => bloc.add(const MenuEvent.removePage(notePage: exampleNotePage)),
        expect: () => const [],
      );
    });
  });
}
