part of 'notepad_bloc.dart';

@freezed
class NotePadEvent with _$NotePadEvent {
  const factory NotePadEvent.fetchStarted({required NotePage notePage}) = _FetchStarted;
  const factory NotePadEvent.addComponent({required Component component}) = _AddComponent;
  const factory NotePadEvent.updateComponent({required Component component}) = _UpdateComponent;
  const factory NotePadEvent.removeComponent({required Component component}) = _RemoveComponent;
  const factory NotePadEvent.componentSelected({required Component component}) = _ComponentSelected;
  const factory NotePadEvent.createEmptyComponent({int? index}) = _CreateEmptyComponent;
  const factory NotePadEvent.saveAll({required List<Component> components}) = _SaveAllComponents;
}
