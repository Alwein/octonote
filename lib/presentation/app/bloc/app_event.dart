part of 'app_bloc.dart';

@freezed
class AppEvent with _$AppEvent {
  const factory AppEvent.appUserChanged({required OctoUser user}) = _AppUserChanged;
  const factory AppEvent.appLogoutRequested() = _AppLogoutRequested;
  const factory AppEvent.appDeleteAccount() = _AppDeleteAccount;
}
