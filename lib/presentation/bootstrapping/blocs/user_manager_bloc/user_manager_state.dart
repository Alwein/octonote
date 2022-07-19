part of 'user_manager_bloc.dart';

@freezed
class UserManagerState with _$UserManagerState {
  const factory UserManagerState({
    @Default(UserManagerStatus.initial()) UserManagerStatus status,
    @Default(0) int runningProcessCounter,
    String? message,
  }) = _UserManagerState;
}

@freezed
class UserManagerStatus with _$UserManagerStatus {
  const factory UserManagerStatus.initial() = _Initial;
  const factory UserManagerStatus.fetchInProgress() = _FetchInProgress;
  const factory UserManagerStatus.fechtSuccess() = _FetchSuccess;
  const factory UserManagerStatus.fetchError({String? message}) = _FetchError;
}
