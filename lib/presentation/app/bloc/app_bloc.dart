import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:octonote/domain/models/octo_user/octo_user.dart';
import 'package:octonote/domain/usecases/authentication/auth_usecases.dart';

part 'app_bloc.freezed.dart';
part 'app_event.dart';
part 'app_state.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc({
    required GetUser getUser,
    required LogOut logOut,
    required GetCurrentUser getCurrentUser,
  })  : _userStream = getUser(),
        _logOut = logOut,
        super(
          getCurrentUser().isNotEmpty
              ? _Authenticated(user: getCurrentUser())
              : const _Unauthenticated(),
        ) {
    _userSubscription = _userStream.listen(_userChanged);
    on<_AppUserChanged>(_onUserChanged);
    on<_AppLogoutRequested>(_onLogoutRequested);
  }
  final Stream<OctoUser> _userStream;
  final LogOut _logOut;
  late final StreamSubscription<OctoUser> _userSubscription;

  void _userChanged(OctoUser user) => add(AppEvent.appUserChanged(user: user));

  @override
  Future<void> close() {
    _userSubscription.cancel();
    return super.close();
  }

  FutureOr<void> _onUserChanged(_AppUserChanged event, Emitter<AppState> emit) {
    if (event.user.isNotEmpty) {
      emit(AppState.authenticated(user: event.user));
    } else if (event.user != state.user) {
      emit(const AppState.unauthenticated());
    }
  }

  FutureOr<void> _onLogoutRequested(_AppLogoutRequested event, Emitter<AppState> emit) {
    unawaited(_logOut());
  }
}
