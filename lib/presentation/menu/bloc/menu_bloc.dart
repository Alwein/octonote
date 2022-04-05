import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:octonote/domain/models/note_page/note_page.dart';
import 'package:octonote/domain/usecases/note_page/note_page_usecases.dart';

part 'menu_state.dart';
part 'menu_event.dart';

part 'menu_bloc.freezed.dart';

class MenuBloc extends Bloc<MenuEvent, MenuState> {
  MenuBloc({
    required GetNotePages getNotePages,
    required AddNotePage addNotePage,
    required UpdateNotePage updateNotePage,
    required RemoveNotePage removeNotePage,
  })  : _getNotePages = getNotePages,
        _addNotePage = addNotePage,
        _updateNotePage = updateNotePage,
        _removeNotePage = removeNotePage,
        super(const _MenuState()) {
    on(
      (MenuEvent event, emit) => event.map(
        fetchStarted: (event) => _onFetchStarted(event, emit),
        addPage: (event) => _onAddPage(event, emit),
        updatePage: (event) => _onUpdatePage(event, emit),
        removePage: (event) => _onRemovePage(event, emit),
      ),
    );
  }
  final GetNotePages _getNotePages;
  final AddNotePage _addNotePage;
  final UpdateNotePage _updateNotePage;
  final RemoveNotePage _removeNotePage;

  FutureOr<void> _onFetchStarted(_FetchStarted event, Emitter<MenuState> emit) async {
    emit(state.copyWith(status: const MenuStatus.fetchInProgress()));

    final notePagesResult = await _getNotePages();
    notePagesResult.fold(
      (notePages) => emit(state.copyWith(notePages: notePages, status: const MenuStatus.success())),
      (initError) => emit(state.copyWith(status: const MenuStatus.error())),
    );
  }

  FutureOr<void> _onAddPage(_AddPage event, Emitter<MenuState> emit) async {
    final addResult = await _addNotePage(notePage: event.notePage);
    addResult.fold(
      (onSuccess) => emit(
          state.copyWith(notePages: List<NotePage>.from(state.notePages)..add(event.notePage))),
      (onError) => null,
    );
  }

  FutureOr<void> _onUpdatePage(_UpdatePage event, Emitter<MenuState> emit) async {
    final updateResult = await _updateNotePage(notePage: event.notePage);
    updateResult.fold(
      (onSuccess) {
        final newNotePagesList = List<NotePage>.from(state.notePages);
        newNotePagesList[event.notePage.index] = event.notePage;
        emit(state.copyWith(notePages: newNotePagesList));
      },
      (onError) => null,
    );
  }

  FutureOr<void> _onRemovePage(_RemovePage event, Emitter<MenuState> emit) async {
    final removeResult = await _removeNotePage(notePage: event.notePage);
    removeResult.fold(
      (onSuccess) => emit(
        state.copyWith(notePages: List<NotePage>.from(state.notePages)..remove(event.notePage)),
      ),
      (onError) => null,
    );
  }
}
