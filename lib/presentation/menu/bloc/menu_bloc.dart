import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:octonote/application/factories/note_page_factory.dart';
import 'package:octonote/domain/models/note_page/note_page.dart';
import 'package:octonote/domain/usecases/usecases.dart';

part 'menu_bloc.freezed.dart';
part 'menu_event.dart';
part 'menu_state.dart';

class MenuBloc extends Bloc<MenuEvent, MenuState> {
  MenuBloc({
    required GetNotePages getNotePages,
    required AddNotePage addNotePage,
    required UpdateNotePage updateNotePage,
    required RemoveNotePageAndComponents removeNotePageAndComponents,
  })  : _getNotePages = getNotePages,
        _addNotePage = addNotePage,
        _updateNotePage = updateNotePage,
        _removeNotePageAndComponents = removeNotePageAndComponents,
        super(const _MenuState(notePageSelected: NotePage.empty())) {
    on(
      (MenuEvent event, emit) => event.map(
        fetchStarted: (event) => _onFetchStarted(event, emit),
        addPage: (event) => _onAddPage(event, emit),
        updatePage: (event) => _onUpdatePage(event, emit),
        removePage: (event) => _onRemovePage(event, emit),
        notePageSelected: (event) => _onNotePageSelected(event, emit),
        createEmptyNotePage: (event) => _onCreateEmptyNotePage(event, emit),
      ),
    );
  }
  final GetNotePages _getNotePages;
  final AddNotePage _addNotePage;
  final UpdateNotePage _updateNotePage;
  final RemoveNotePageAndComponents _removeNotePageAndComponents;

  FutureOr<void> _onFetchStarted(_FetchStarted event, Emitter<MenuState> emit) async {
    emit(state.copyWith(status: const MenuStatus.fetchInProgress()));

    final notePagesResult = await _getNotePages();
    notePagesResult.fold(
      (notePages) {
        emit(state.copyWith(status: const MenuStatus.success()));
        notePages.isNotEmpty
            ? emit(
                state.copyWith(
                  notePages: notePages,
                  notePageSelected: notePages.first,
                ),
              )
            : add(const MenuEvent.createEmptyNotePage());
      },
      (initError) => emit(state.copyWith(status: const MenuStatus.error())),
    );
  }

  FutureOr<void> _onAddPage(_AddPage event, Emitter<MenuState> emit) async {
    final NotePage notePageToAdd = event.notePage;
    final addResult = await _addNotePage(notePage: notePageToAdd);
    addResult.fold(
      (onSuccess) {
        emit(
          state.copyWith(
            notePageSelected: notePageToAdd,
            notePages: List<NotePage>.from(state.notePages)..add(notePageToAdd),
          ),
        );
      },
      (onError) => null,
    );
  }

  FutureOr<void> _onUpdatePage(_UpdatePage event, Emitter<MenuState> emit) async {
    final updateResult = await _updateNotePage(notePage: event.notePage);
    updateResult.fold(
      (onSuccess) {
        final newNotePagesList = List<NotePage>.from(state.notePages);
        newNotePagesList[event.notePage.index] = event.notePage;
        emit(state.copyWith(notePages: newNotePagesList, notePageSelected: event.notePage));
      },
      (onError) => null,
    );
  }

  FutureOr<void> _onRemovePage(_RemovePage event, Emitter<MenuState> emit) async {
    final removeResult = await _removeNotePageAndComponents(notePage: event.notePage);
    removeResult.fold(
      (onSuccess) => emit(
        state.copyWith(
          notePages: List<NotePage>.from(state.notePages)..remove(event.notePage),
          notePageSelected: const NotePage.empty(),
        ),
      ),
      (onError) => null,
    );
  }

  FutureOr<void> _onNotePageSelected(_NotePageSelected event, Emitter<MenuState> emit) {
    emit(state.copyWith(notePageSelected: event.notePage));
  }

  FutureOr<void> _onCreateEmptyNotePage(_CreateEmptyNotePage event, Emitter<MenuState> emit) {
    final int index = state.notePages.length;
    add(MenuEvent.addPage(notePage: NotePageFactory.createDefault(index: index)));
  }
}
