part of 'octo_editor_bloc.dart';

@freezed
class OctoEditorEvent with _$OctoEditorEvent {
  const factory OctoEditorEvent.hideOrShowToolbar() = _HideOrShowToolbar;
  const factory OctoEditorEvent.showEditorToolbar() = _ShowEditorToolbar;
  const factory OctoEditorEvent.hideEditorToolbar() = _HideEditorToolbar;
  const factory OctoEditorEvent.cut() = _Cut;
  const factory OctoEditorEvent.copy() = _Copy;
  const factory OctoEditorEvent.paste() = _Paste;
  const factory OctoEditorEvent.selectAll() = _SelectAll;
  const factory OctoEditorEvent.showImageToolbar() = _ShowImageToolbar;
  const factory OctoEditorEvent.hideImageToolbar() = _HideImageToolbar;
}
