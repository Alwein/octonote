part of 'menu_bloc.dart';

@freezed
class MenuEvent with _$MenuEvent {
  const factory MenuEvent.fetchStarted() = _FetchStarted;
  const factory MenuEvent.addPage({required NotePage notePage}) = _AddPage;
  const factory MenuEvent.updatePage({required NotePage notePage}) = _UpdatePage;
  const factory MenuEvent.removePage({required NotePage notePage}) = _RemovePage;
  const factory MenuEvent.notePageSelected({required NotePage notePage}) = _NotePageSelected;
  const factory MenuEvent.createEmptyNotePage() = _CreateEmptyNotePage;
}
