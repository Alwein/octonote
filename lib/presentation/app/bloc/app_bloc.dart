import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:octonote/domain/models/octo_user/octo_user.dart';
import 'package:octonote/domain/repositories/authentication/authentication_repository.dart';

part 'app_bloc.freezed.dart';
part 'app_event.dart';
part 'app_state.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc({required AuthenticationRepository authenticationRepository})
      : _authenticationRepository = authenticationRepository,
        super(
          authenticationRepository.currentUser.isNotEmpty
              ? _Authenticated(user: authenticationRepository.currentUser)
              : const _Unauthenticated(),
        ) {
    _userSubscription = _authenticationRepository.user.listen(_onUserChanged);
    on<_AppUserChanged>(_onUserChangedToState);
    on<_AppLogoutRequested>(_onLogoutRequestedToState);
  }

  final AuthenticationRepository _authenticationRepository;
  late final StreamSubscription<OctoUser> _userSubscription;

  void _onUserChanged(OctoUser user) => add(AppEvent.appUserChanged(user: user));

  @override
  Future<void> close() {
    _userSubscription.cancel();
    return super.close();
  }

  FutureOr<void> _onUserChangedToState(_AppUserChanged event, Emitter<AppState> emit) {
    if (event.user.isNotEmpty) {
      emit(AppState.authenticated(user: event.user));
    } else if (event.user != state.user) {
      emit(const AppState.unauthenticated());
    }
  }

  FutureOr<void> _onLogoutRequestedToState(_AppLogoutRequested event, Emitter<AppState> emit) {
    unawaited(_authenticationRepository.logOut());
  }
}
