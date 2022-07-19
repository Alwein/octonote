part of 'user_manager_bloc.dart';

@freezed
class UserManagerEvent with _$UserManagerEvent {
  const factory UserManagerEvent.fetchStarted() = _FetchStarted;
}
