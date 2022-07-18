import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:octonote/domain/models/octo_user/octo_user.dart';
import 'package:octonote/domain/usecases/atomic/users/fetch_user_usecase.dart';
import 'package:octonote/domain/usecases/authentication/auth_usecases.dart';

part 'user_manager_bloc.freezed.dart';
part 'user_manager_event.dart';
part 'user_manager_state.dart';

class UserManagerBloc extends Bloc<UserManagerEvent, UserManagerState> {
  UserManagerBloc({
    required FetchUser fetchUser,
    required GetCurrentUser getCurrentUser,
  })  : _fetchUser = fetchUser,
        _getCurrentUserId = getCurrentUser,
        super(const UserManagerState()) {
    on<UserManagerEvent>(
      (event, emit) => event.map(
        fetchStarted: (event) => _onFetchStarted(event, emit),
      ),
    );
  }

  late final OctoUser currentUser;

  final FetchUser _fetchUser;
  final GetCurrentUser _getCurrentUserId;

  Future<void> _onFetchStarted(_FetchStarted value, Emitter<UserManagerState> emit) async {
    if (state.status is _Initial || state.status is _FetchError) {
      emit(state.copyWith(status: const UserManagerStatus.fetchInProgress()));
      final user = _getCurrentUserId();
      assert(user.isNotEmpty, 'userId should not be empty during _onFetchStarted');

      final result = await _fetchUser(FetchUserParams(userId: user.uid));

      result.fold(
        (failure) => emit(state.copyWith(status: const UserManagerStatus.fetchError())),
        (userSuccess) {
          currentUser = userSuccess;
          emit(state.copyWith(status: const UserManagerStatus.fechtSuccess()));
        },
      );
    }
  }
}
