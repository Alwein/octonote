part of 'menu_bloc.dart';

@freezed
class MenuState with _$MenuState {
  const factory MenuState({
    @Default([]) List<NotePage> notePages,
    @Default(MenuInitial()) MenuStatus status,
  }) = _MenuState;
}

@freezed
class MenuStatus with _$MenuStatus {
  const factory MenuStatus.initial() = MenuInitial;
  const factory MenuStatus.fetchInProgress() = MenuFetchInProgress;
  const factory MenuStatus.success() = MenuSuccess;
  const factory MenuStatus.error() = MenuError;
}
