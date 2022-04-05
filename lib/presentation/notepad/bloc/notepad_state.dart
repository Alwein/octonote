part of 'notepad_bloc.dart';

@freezed
class NotePadState with _$NotePadState {
  const factory NotePadState({
    required NotePage notePage,
    @Default([]) List<Component> components,
    @Default(NotePadInitial()) NotePadStatus status,
  }) = _NotePadState;
}

@freezed
class NotePadStatus with _$NotePadStatus {
  const factory NotePadStatus.initial() = NotePadInitial;
  const factory NotePadStatus.fetchInProgress() = NotePadFetchInProgress;
  const factory NotePadStatus.success() = NotePadSuccess;
  const factory NotePadStatus.error() = NotePadError;
}
