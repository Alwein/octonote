import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:octonote/application/utils/app_service.dart' as a_s;
import 'package:octonote/domain/models/app_error/app_error.dart';
import 'package:octonote/domain/models/component/component.dart';
import 'package:octonote/domain/models/note_page/note_page.dart';
import 'package:octonote/domain/usecases/atomic/component/component_usecases.dart';
import 'package:octonote/locator.dart' as sl;
import 'package:octonote/presentation/notepad/bloc/notepad_bloc.dart';

class MockAppService extends Mock implements a_s.AppService {
  @override
  bool getIsTestEnvironment() => true;
}

class MockAddComponent extends Mock implements AddComponent {}

class MockUpdateComponent extends Mock implements UpdateComponent {}

class MockRemoveComponent extends Mock implements RemoveComponent {}

class MockGetComponents extends Mock implements GetComponents {}

void main() {
  group('NotePadBloc', () {
    late AddComponent addComponent;
    late UpdateComponent updateComponent;
    late RemoveComponent removeComponent;
    late GetComponents getComponents;

    setUp(() async {
      await sl.getIt.reset();
      sl.getIt.registerLazySingleton<a_s.AppService>(() => MockAppService());
      addComponent = MockAddComponent();
      updateComponent = MockUpdateComponent();
      removeComponent = MockRemoveComponent();
      getComponents = MockGetComponents();
    });

    setUpAll(() {
      registerFallbackValue(
        const Component(
          id: "id",
          pageId: "pageId",
          index: 0,
          content: ComponentContent.text(content: "content"),
        ),
      );
    });

    const exampleNotePage = NotePage(id: "id", index: 0, title: "title");

    NotePadBloc _buildBloc() {
      return NotePadBloc(
        addComponent: addComponent,
        updateComponent: updateComponent,
        removeComponent: removeComponent,
        getComponents: getComponents,
      );
    }

    const componentContent = ComponentContent.text(content: "text");

    final exampleComponent = Component(
      id: "id",
      pageId: exampleNotePage.id,
      index: 0,
      content: componentContent,
    );

    test('default state should have initial status and empty list of Component', () {
      expect(
        _buildBloc().state,
        const NotePadState(notePage: NotePage.empty(), status: NotePadStatus.initial()),
      );
    });

    group('fetchStarted', () {
      blocTest<NotePadBloc, NotePadState>(
        'should emit NotePadStatus.success() and a list of Component',
        setUp: () {
          when(() => getComponents(notePage: exampleNotePage))
              .thenAnswer((_) async => Left([exampleComponent]));
        },
        build: () => _buildBloc(),
        act: (bloc) => bloc.add(const NotePadEvent.fetchStarted(notePage: exampleNotePage)),
        expect: () => [
          const NotePadState(notePage: exampleNotePage, status: NotePadStatus.fetchInProgress()),
          NotePadState(
            notePage: exampleNotePage,
            status: const NotePadStatus.success(),
            components: [exampleComponent],
          ),
        ],
      );
      blocTest<NotePadBloc, NotePadState>(
        'should emit NotePadStatus.error() when getComponents fails',
        setUp: () {
          when(() => getComponents(notePage: exampleNotePage))
              .thenAnswer((_) async => Right(AppError()));
        },
        build: () => _buildBloc(),
        act: (bloc) => bloc.add(const NotePadEvent.fetchStarted(notePage: exampleNotePage)),
        expect: () => const [
          NotePadState(notePage: exampleNotePage, status: NotePadStatus.fetchInProgress()),
          NotePadState(notePage: exampleNotePage, status: NotePadStatus.error(), components: []),
        ],
      );
    });

    group("addComponent", () {
      blocTest<NotePadBloc, NotePadState>(
        'should emit same state with a new component',
        setUp: () {
          when(() => addComponent(component: exampleComponent))
              .thenAnswer((_) async => const Left(unit));
        },
        build: () => _buildBloc(),
        seed: () => const NotePadState(
          notePage: exampleNotePage,
          status: NotePadStatus.success(),
          components: [],
        ),
        act: (bloc) => bloc.add(NotePadEvent.addComponent(component: exampleComponent)),
        expect: () => [
          NotePadState(
            notePage: exampleNotePage,
            status: const NotePadStatus.success(),
            components: [exampleComponent],
            componentSelected: exampleComponent,
          ),
        ],
      );

      blocTest<NotePadBloc, NotePadState>(
        'should emit nothing when addComponent fails',
        setUp: () {
          when(() => addComponent(component: exampleComponent))
              .thenAnswer((_) async => Right(AppError()));
        },
        build: () => _buildBloc(),
        seed: () => const NotePadState(
          notePage: exampleNotePage,
          status: NotePadStatus.success(),
          components: [],
        ),
        act: (bloc) => bloc.add(NotePadEvent.addComponent(component: exampleComponent)),
        expect: () => const [],
      );
    });
    group("updateComponent", () {
      final Component updatedComponent =
          exampleComponent.copyWith(content: const ComponentContent.title1(content: 'text'));
      blocTest<NotePadBloc, NotePadState>(
        'should emit same state with an updated list of components',
        setUp: () {
          when(
            () => updateComponent(component: updatedComponent),
          ).thenAnswer((_) async => const Left(unit));
        },
        build: () => _buildBloc(),
        seed: () => NotePadState(
          notePage: exampleNotePage,
          status: const NotePadStatus.success(),
          components: [exampleComponent],
        ),
        act: (bloc) => bloc.add(NotePadEvent.updateComponent(component: updatedComponent)),
        expect: () => [
          NotePadState(
            notePage: exampleNotePage,
            status: const NotePadStatus.success(),
            components: [updatedComponent],
            componentSelected: updatedComponent,
          ),
        ],
      );

      blocTest<NotePadBloc, NotePadState>(
        'should emit nothing when updateComponent fails',
        setUp: () {
          when(() => updateComponent(component: updatedComponent)).thenAnswer(
            (_) async => Right(AppError()),
          );
        },
        build: () => _buildBloc(),
        seed: () => NotePadState(
          notePage: exampleNotePage,
          status: const NotePadStatus.success(),
          components: [exampleComponent],
        ),
        act: (bloc) => bloc.add(NotePadEvent.updateComponent(component: updatedComponent)),
        expect: () => const [],
      );
    });
    group("deleteComponent", () {
      blocTest<NotePadBloc, NotePadState>(
        'should emit same state with one component less',
        setUp: () {
          when(() => removeComponent(component: exampleComponent)).thenAnswer(
            (_) async => const Left(unit),
          );
        },
        build: () => _buildBloc(),
        seed: () => NotePadState(
          notePage: exampleNotePage,
          status: const NotePadStatus.success(),
          components: [exampleComponent],
          componentSelected: exampleComponent,
        ),
        act: (bloc) => bloc.add(NotePadEvent.removeComponent(component: exampleComponent)),
        expect: () => const [
          NotePadState(
            notePage: exampleNotePage,
            status: NotePadStatus.success(),
            components: [],
          ),
        ],
      );

      blocTest<NotePadBloc, NotePadState>(
        'should emit nothing when removeComponent fails',
        setUp: () {
          when(() => removeComponent(component: exampleComponent)).thenAnswer(
            (_) async => Right(AppError()),
          );
        },
        build: () => _buildBloc(),
        seed: () => NotePadState(
          notePage: exampleNotePage,
          status: const NotePadStatus.success(),
          components: [exampleComponent],
        ),
        act: (bloc) => bloc.add(NotePadEvent.removeComponent(component: exampleComponent)),
        expect: () => const [],
      );
    });

    group('notePageSelected', () {
      blocTest<NotePadBloc, NotePadState>(
        'should emit same state with new componentSelected',
        build: () => _buildBloc(),
        seed: () => NotePadState(
          notePage: exampleNotePage,
          status: const NotePadStatus.success(),
          components: [exampleComponent],
        ),
        act: (bloc) => bloc.add(NotePadEvent.componentSelected(component: exampleComponent)),
        expect: () => [
          NotePadState(
            notePage: exampleNotePage,
            status: const NotePadStatus.success(),
            components: [exampleComponent],
            componentSelected: exampleComponent,
          ),
        ],
      );
    });

    group('CreateEmptyComponent', () {
      final testGeneratedComponent = Component(
        id: 'test',
        index: 0,
        pageId: exampleNotePage.id,
        content: const ComponentContent.text(content: ''),
      );

      blocTest<NotePadBloc, NotePadState>(
        'should add an event to create a new default component and another to select it',
        setUp: () {
          when(() => addComponent(component: testGeneratedComponent))
              .thenAnswer((_) async => const Left(unit));
        },
        build: () => _buildBloc(),
        seed: () => const NotePadState(
          notePage: exampleNotePage,
          status: NotePadStatus.success(),
          components: [],
        ),
        act: (bloc) => bloc.add(const NotePadEvent.createEmptyComponent()),
        expect: () => [
          NotePadState(
            notePage: exampleNotePage,
            status: const NotePadStatus.success(),
            components: [testGeneratedComponent],
            componentSelected: testGeneratedComponent,
          )
        ],
      );
    });
    group('onSaveAll', () {
      final testComponent = Component(
        id: 'test',
        index: 0,
        pageId: exampleNotePage.id,
        content: const ComponentContent.text(content: ''),
      );
      final secondTestComponent = testComponent.copyWith(id: "secondTest");

      blocTest<NotePadBloc, NotePadState>(
        'should delete all components and save new ones',
        setUp: () {
          when(() => addComponent(component: any(named: "component")))
              .thenAnswer((_) async => const Left(unit));
          when(() => removeComponent(component: any(named: "component"))).thenAnswer(
            (_) async => const Left(unit),
          );
        },
        seed: () => NotePadState(
          notePage: exampleNotePage,
          status: const NotePadStatus.success(),
          components: [testComponent],
        ),
        build: () => _buildBloc(),
        act: (bloc) => bloc.add(NotePadEvent.saveAll(components: [secondTestComponent])),
        expect: () => <NotePadState>[
          const NotePadState(
            notePage: exampleNotePage,
            status: NotePadStatus.success(),
            components: [],
          ),
          NotePadState(
            notePage: exampleNotePage,
            status: const NotePadStatus.success(),
            componentSelected: secondTestComponent,
            components: [secondTestComponent],
          ),
        ],
      );
    });
  });
}
