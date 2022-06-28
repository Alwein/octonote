import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:octonote/application/factories/component_factory.dart';
import 'package:octonote/domain/models/component/component.dart';
import 'package:octonote/domain/models/note_page/note_page.dart';
import 'package:octonote/domain/usecases/atomic/component/component_usecases.dart';

part 'notepad_bloc.freezed.dart';
part 'notepad_event.dart';
part 'notepad_state.dart';

class NotePadBloc extends Bloc<NotePadEvent, NotePadState> {
  NotePadBloc({
    required GetComponents getComponents,
    required AddComponent addComponent,
    required UpdateComponent updateComponent,
    required RemoveComponent removeComponent,
  })  : _getComponents = getComponents,
        _addComponent = addComponent,
        _updateComponent = updateComponent,
        _removeComponent = removeComponent,
        super(const NotePadState(notePage: NotePage.empty())) {
    on(
      (NotePadEvent event, emit) => event.map(
        fetchStarted: (event) => _onFetchStarted(event, emit),
        addComponent: (event) => _onAddComponent(event, emit),
        updateComponent: (event) => _onUpdateComponent(event, emit),
        removeComponent: (event) => _onRemoveComponent(event, emit),
        componentSelected: (event) => _onComponentSelected(event, emit),
        createEmptyComponent: (event) => _onCreateEmptyComponent(event, emit),
        saveAll: (event) => _onSaveAll(event, emit),
      ),
    );
  }

  final GetComponents _getComponents;
  final AddComponent _addComponent;
  final UpdateComponent _updateComponent;
  final RemoveComponent _removeComponent;

  FutureOr<void> _onFetchStarted(_FetchStarted event, Emitter<NotePadState> emit) async {
    emit(state.copyWith(notePage: event.notePage, status: const NotePadStatus.fetchInProgress()));

    final componentsResult = await _getComponents(notePage: event.notePage);
    componentsResult.fold(
      (components) => emit(
        NotePadState(
          components: components,
          status: const NotePadStatus.success(),
          notePage: event.notePage,
        ),
      ),
      (initError) => emit(state.copyWith(status: const NotePadStatus.error())),
    );
  }

  FutureOr<void> _onAddComponent(_AddComponent event, Emitter<NotePadState> emit) async {
    final addResult = await _addComponent(component: event.component);
    addResult.fold(
      (onSuccess) => emit(
        state.copyWith(
          components: List<Component>.from(state.components)..add(event.component),
          componentSelected: event.component,
        ),
      ),
      (onError) => null,
    );
  }

  FutureOr<void> _onUpdateComponent(_UpdateComponent event, Emitter<NotePadState> emit) async {
    final updateResult = await _updateComponent(component: event.component);
    updateResult.fold(
      (onSuccess) {
        final newComponentsList = List<Component>.from(state.components);
        newComponentsList[event.component.index] = event.component;
        emit(
          state.copyWith(
            components: newComponentsList,
            componentSelected: event.component,
          ),
        );
      },
      (onError) => null,
    );
  }

  FutureOr<void> _onRemoveComponent(_RemoveComponent event, Emitter<NotePadState> emit) async {
    final removeResult = await _removeComponent(component: event.component);
    removeResult.fold(
      (onSuccess) => emit(
        state.copyWith(
          components: List<Component>.from(state.components)..remove(event.component),
          componentSelected:
              event.component.index > 0 ? state.components[event.component.index - 1] : null,
        ),
      ),
      (onError) => null,
    );
  }

  FutureOr<void> _onComponentSelected(_ComponentSelected event, Emitter<NotePadState> emit) {
    emit(state.copyWith(componentSelected: event.component));
  }

  FutureOr<void> _onCreateEmptyComponent(_CreateEmptyComponent event, Emitter<NotePadState> emit) {
    final int index = state.components.length;
    add(
      NotePadEvent.addComponent(
        component: ComponentFactory.createOne(index: index, page: state.notePage),
      ),
    );
  }

  FutureOr<void> _onSaveAll(_SaveAllComponents event, Emitter<NotePadState> emit) async {
    final List<Component> oldComponents = List.from(state.components);

    for (final component in event.components) {
      final Component? equivalentComponent = containsEquivalentComponent(oldComponents, component);
      if (equivalentComponent != null) {
        oldComponents.remove(equivalentComponent);
      } else {
        add(NotePadEvent.addComponent(component: component));
      }
    }
    for (final remainingComponent in oldComponents) {
      add(NotePadEvent.removeComponent(component: remainingComponent));
    }

    // for (final component in state.components) {
    //   add(NotePadEvent.removeComponent(component: component));
    // }
    // for (final component in event.components) {
    //   add(NotePadEvent.addComponent(component: component));
    // }
  }
}

Component? containsEquivalentComponent(List<Component> componentList, Component component) {
  for (final comp in componentList) {
    if (isEquivalentComponent(comp, component)) {
      return comp;
    }
  }
  return null;
}

bool isEquivalentComponent(Component first, Component second) {
  if (first.pageId == second.pageId &&
      first.index == second.index &&
      first.content == second.content) {
    return true;
  }
  return false;
}
