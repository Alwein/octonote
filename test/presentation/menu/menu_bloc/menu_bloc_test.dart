import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:octonote/application/utils/app_service.dart' as a_s;
import 'package:octonote/domain/models/app_error/app_error.dart';
import 'package:octonote/domain/models/note_page/note_page.dart';
import 'package:octonote/domain/usecases/note_page/note_page_usecases.dart';
import 'package:octonote/locator.dart' as sl;
import 'package:octonote/presentation/menu/bloc/menu_bloc.dart';
// ignore: depend_on_referenced_packages
import 'package:shared_preferences/shared_preferences.dart';

class MockAppService extends Mock implements a_s.AppService {
  @override
  bool getIsTestEnvironment() => true;
}

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

    setUp(() async {
      SharedPreferences.setMockInitialValues({});
      TestWidgetsFlutterBinding.ensureInitialized();
      await EasyLocalization.ensureInitialized();
      await sl.getIt.reset();
      sl.getIt.registerLazySingleton<a_s.AppService>(() => MockAppService());
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
    final testGeneratedNotePage = NotePage(id: 'test', index: 0, title: tr('note_page.untitled'));

    test('default state should have initial status and empty list of NotePage', () {
      expect(
        _buildBloc().state,
        const MenuState(
          notePageSelected: NotePage.empty(),
          notePages: [],
          status: MenuStatus.initial(),
        ),
      );
    });

    group('fetchStarted', () {
      blocTest<MenuBloc, MenuState>(
        'should emit MenuStatus.success(), a list of NotePage and the first selected page',
        setUp: () {
          when(() => getNotePages()).thenAnswer((_) async => const Left([exampleNotePage]));
        },
        build: () => _buildBloc(),
        act: (bloc) => bloc.add(const MenuEvent.fetchStarted()),
        expect: () => const [
          MenuState(notePageSelected: NotePage.empty(), status: MenuStatus.fetchInProgress()),
          MenuState(notePageSelected: NotePage.empty(), status: MenuStatus.success()),
          MenuState(
            notePageSelected: exampleNotePage,
            notePages: [exampleNotePage],
            status: MenuStatus.success(),
          ),
        ],
      );

      blocTest<MenuBloc, MenuState>(
        'should call CreateEmptyNotePage when notePages is empty',
        setUp: () {
          when(() => getNotePages()).thenAnswer((_) async => const Left([]));
          when(() => addNotePage(notePage: testGeneratedNotePage))
              .thenAnswer((_) async => const Left(unit));
        },
        build: () => _buildBloc(),
        act: (bloc) => bloc.add(const MenuEvent.fetchStarted()),
        expect: () => [
          const MenuState(notePageSelected: NotePage.empty(), status: MenuStatus.fetchInProgress()),
          const MenuState(notePageSelected: NotePage.empty(), status: MenuStatus.success()),
          MenuState(
            notePageSelected: testGeneratedNotePage,
            status: const MenuStatus.success(),
            notePages: [testGeneratedNotePage],
          ),
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
          MenuState(notePageSelected: NotePage.empty(), status: MenuStatus.fetchInProgress()),
          MenuState(notePageSelected: NotePage.empty(), status: MenuStatus.error(), notePages: []),
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
        seed: () => const MenuState(
          notePageSelected: NotePage.empty(),
          status: MenuStatus.success(),
          notePages: [],
        ),
        act: (bloc) => bloc.add(const MenuEvent.addPage(notePage: exampleNotePage)),
        expect: () => const [
          MenuState(
            notePageSelected: exampleNotePage,
            status: MenuStatus.success(),
            notePages: [exampleNotePage],
          ),
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
        seed: () => const MenuState(
          notePageSelected: NotePage.empty(),
          status: MenuStatus.success(),
          notePages: [],
        ),
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
        seed: () => const MenuState(
          notePageSelected: NotePage.empty(),
          status: MenuStatus.success(),
          notePages: [exampleNotePage],
        ),
        act: (bloc) => bloc.add(MenuEvent.updatePage(notePage: updatedNotePage)),
        expect: () => [
          MenuState(
            notePageSelected: const NotePage.empty(),
            status: const MenuStatus.success(),
            notePages: [updatedNotePage],
          ),
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
        seed: () => const MenuState(
          notePageSelected: NotePage.empty(),
          status: MenuStatus.success(),
          notePages: [exampleNotePage],
        ),
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
        seed: () => const MenuState(
          notePageSelected: NotePage.empty(),
          status: MenuStatus.success(),
          notePages: [exampleNotePage],
        ),
        act: (bloc) => bloc.add(const MenuEvent.removePage(notePage: exampleNotePage)),
        expect: () => const [
          MenuState(
            notePageSelected: NotePage.empty(),
            status: MenuStatus.success(),
            notePages: [],
          ),
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
        seed: () => const MenuState(
          notePageSelected: NotePage.empty(),
          status: MenuStatus.success(),
          notePages: [exampleNotePage],
        ),
        act: (bloc) => bloc.add(const MenuEvent.removePage(notePage: exampleNotePage)),
        expect: () => const [],
      );
    });

    group('notePageSelected', () {
      blocTest<MenuBloc, MenuState>(
        'should emit same state with new pageSelected',
        build: () => _buildBloc(),
        seed: () => const MenuState(
          notePageSelected: NotePage.empty(),
          status: MenuStatus.success(),
          notePages: [exampleNotePage],
        ),
        act: (bloc) => bloc.add(const MenuEvent.notePageSelected(notePage: exampleNotePage)),
        expect: () => const [
          MenuState(
            notePageSelected: exampleNotePage,
            status: MenuStatus.success(),
            notePages: [exampleNotePage],
          )
        ],
      );
    });

    group('CreateEmptyNotePage', () {
      blocTest<MenuBloc, MenuState>(
        'should add an event to create a new default notePage and another to select it',
        setUp: () {
          when(() => addNotePage(notePage: testGeneratedNotePage))
              .thenAnswer((_) async => const Left(unit));
        },
        build: () => _buildBloc(),
        seed: () => const MenuState(
          notePageSelected: NotePage.empty(),
          status: MenuStatus.success(),
          notePages: [],
        ),
        act: (bloc) => bloc.add(const MenuEvent.createEmptyNotePage()),
        expect: () => [
          MenuState(
            notePageSelected: testGeneratedNotePage,
            notePages: [testGeneratedNotePage],
            status: const MenuStatus.success(),
          )
        ],
      );
    });
  });
}
