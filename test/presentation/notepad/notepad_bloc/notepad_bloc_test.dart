import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:octonote/domain/models/app_error/app_error.dart';
import 'package:octonote/domain/models/component/component.dart';
import 'package:octonote/domain/models/note_page/note_page.dart';
import 'package:octonote/domain/usecases/component/component_usecases.dart';
import 'package:octonote/presentation/notepad/bloc/notepad_bloc.dart';

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

    setUp(() {
      addComponent = MockAddComponent();
      updateComponent = MockUpdateComponent();
      removeComponent = MockRemoveComponent();
      getComponents = MockGetComponents();
    });

    const exampleNotePage = NotePage(id: "id", index: 0, title: "title");

    NotePadBloc _buildBloc() {
      return NotePadBloc(
        exampleNotePage,
        addComponent: addComponent,
        updateComponent: updateComponent,
        removeComponent: removeComponent,
        getComponents: getComponents,
      );
    }

    const componentContent = ComponentContent.text(text: "text");

    final exampleComponent = Component(
      id: "id",
      pageId: exampleNotePage.id,
      index: 0,
      content: componentContent,
    );

    test('default state should have initial status and empty list of Component', () {
      expect(
        _buildBloc().state,
        const NotePadState(notePage: exampleNotePage, status: NotePadStatus.initial()),
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
        act: (bloc) => bloc.add(const NotePadEvent.fetchStarted()),
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
        act: (bloc) => bloc.add(const NotePadEvent.fetchStarted()),
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
          exampleComponent.copyWith(content: const ComponentContent.title1(text: 'text'));
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
  });
}
