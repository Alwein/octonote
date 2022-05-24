part of 'app_bloc.dart';

enum AppStatus {
  authenticated,
  unauthenticated,
}

@freezed
class AppState with _$AppState {
  const factory AppState.authenticated({
    required OctoUser user,
    @Default(AppStatus.authenticated) AppStatus status,
  }) = _Authenticated;
  const factory AppState.unauthenticated({
    @Default(OctoUser.empty()) OctoUser user,
    @Default(AppStatus.unauthenticated) AppStatus status,
  }) = _Unauthenticated;
}
