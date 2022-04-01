import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:octonote/data/hive/note_page_hive.dart';
import 'package:octonote/domain/models/note_page/note_page.dart';
import 'package:octonote/domain/repositories/note_page/note_page_repository.dart';
import 'package:octonote/domain/usecases/note_page/get_note_page_usecase.dart';
import 'package:octonote/domain/usecases/note_page/init_note_page_usecase.dart';

part 'menu_state.dart';
part 'menu_event.dart';

part 'menu_bloc.freezed.dart';

class MenuBloc extends Bloc<MenuEvent, MenuState> {
  MenuBloc({required NotePageRepository notePageRepository})
      : _notePageRepository = notePageRepository,
        super(const _MenuState()) {
    on((MenuEvent event, emit) => event.map(
          fetchStarted: (event) => _onFetchStarted(event, emit),
          addPage: (event) => _onAddPage(event, emit),
          updatePage: (event) => _onUpdatePage(event, emit),
          deletePage: (event) => _onDeletePage(event, emit),
        ));
  }

  final NotePageRepository _notePageRepository;

  FutureOr<void> _onFetchStarted(_FetchStarted event, Emitter<MenuState> emit) async {
    emit(state.copyWith(status: const MenuStatus.fetchInProgress()));

    final initNotePagesUsecase = InitNotePage(_notePageRepository);
    final initResult = await initNotePagesUsecase();
    initResult.fold(
      (initSuccess) async {
        final getNotePagesUsecase = GetNotePages(_notePageRepository);
        final notePagesResult = await getNotePagesUsecase();
        notePagesResult.fold(
          (notePages) =>
              emit(state.copyWith(notePages: notePages, status: const MenuStatus.success())),
          (error) => emit(state.copyWith(status: const MenuStatus.error())),
        );
      },
      (initFailure) => emit(state.copyWith(status: const MenuStatus.error())),
    );
  }

  FutureOr<void> _onAddPage(_AddPage event, Emitter<MenuState> emit) {}

  FutureOr<void> _onUpdatePage(_UpdatePage event, Emitter<MenuState> emit) {}

  FutureOr<void> _onDeletePage(_DeletePage event, Emitter<MenuState> emit) {}
}
