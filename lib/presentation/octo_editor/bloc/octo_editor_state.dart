part of 'octo_editor_bloc.dart';

@freezed
class OctoEditorState with _$OctoEditorState {
  const factory OctoEditorState({
    @Default(false) bool showEditorToolBar,
    @Default(false) bool showImageToolBar,
  }) = _OctoEditorState;
}
