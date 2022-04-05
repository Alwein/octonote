import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:octonote/domain/models/component/component.dart';
import 'package:octonote/domain/models/note_page/note_page.dart';
import 'package:octonote/domain/usecases/component/component_usecases.dart';

part 'notepad_event.dart';
part 'notepad_state.dart';

part 'notepad_bloc.freezed.dart';

class NotePadBloc extends Bloc<NotePadEvent, NotePadState> {
  NotePadBloc(
    NotePage notePage, {
    required GetComponents getComponents,
    required AddComponent addComponent,
    required UpdateComponent updateComponent,
    required RemoveComponent removeComponent,
  })  : _getComponents = getComponents,
        _addComponent = addComponent,
        _updateComponent = updateComponent,
        _removeComponent = removeComponent,
        super(NotePadState(notePage: notePage)) {
    on(
      (NotePadEvent event, emit) => event.map(
        fetchStarted: (event) => _onFetchStarted(event, emit),
        addComponent: (event) => _onAddComponent(event, emit),
        updateComponent: (event) => _onUpdateComponent(event, emit),
        removeComponent: (event) => _onRemoveComponent(event, emit),
      ),
    );
  }

  final GetComponents _getComponents;
  final AddComponent _addComponent;
  final UpdateComponent _updateComponent;
  final RemoveComponent _removeComponent;

  FutureOr<void> _onFetchStarted(_FetchStarted event, Emitter<NotePadState> emit) async {
    emit(state.copyWith(status: const NotePadStatus.fetchInProgress()));

    final componentsResult = await _getComponents(notePage: state.notePage);
    componentsResult.fold(
      (components) =>
          emit(state.copyWith(components: components, status: const NotePadStatus.success())),
      (initError) => emit(state.copyWith(status: const NotePadStatus.error())),
    );
  }

  FutureOr<void> _onAddComponent(_AddComponent event, Emitter<NotePadState> emit) async {
    final addResult = await _addComponent(component: event.component);
    addResult.fold(
      (onSuccess) => emit(
        state.copyWith(components: List<Component>.from(state.components)..add(event.component)),
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
        emit(state.copyWith(components: newComponentsList));
      },
      (onError) => null,
    );
  }

  FutureOr<void> _onRemoveComponent(_RemoveComponent event, Emitter<NotePadState> emit) async {
    final removeResult = await _removeComponent(component: event.component);
    removeResult.fold(
      (onSuccess) => emit(
        state.copyWith(components: List<Component>.from(state.components)..remove(event.component)),
      ),
      (onError) => null,
    );
  }
}
