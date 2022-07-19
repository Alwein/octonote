import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:octonote/domain/models/app_error/app_error.dart';
import 'package:octonote/domain/models/octo_user/octo_user.dart';
import 'package:octonote/domain/usecases/atomic/users/fetch_user_usecase.dart';
import 'package:octonote/domain/usecases/authentication/get_current_user_usecase.dart';
import 'package:octonote/presentation/bootstrapping/blocs/user_manager_bloc/user_manager_bloc.dart';

class MockFetchUser with Mock implements FetchUser {}

class MockGetCurrentUserId with Mock implements GetCurrentUser {}

void main() {
  late FetchUser fetchUser;
  late GetCurrentUser getCurrentUser;

  setUp(() {
    fetchUser = MockFetchUser();
    getCurrentUser = MockGetCurrentUserId();
  });

  setUpAll(() {
    registerFallbackValue(FetchUserParams(userId: ''));
    registerFallbackValue(const OctoUser(uid: ''));
  });

  const OctoUser userTest = OctoUser(uid: 'testId');

  UserManagerBloc _buildBloc() {
    return UserManagerBloc(
      fetchUser: fetchUser,
      getCurrentUser: getCurrentUser,
    );
  }

  group('onFetchStarted', () {
    blocTest<UserManagerBloc, UserManagerState>(
      'should emits nothing if state is fetchInProgress',
      seed: () => const UserManagerState(status: UserManagerStatus.fetchInProgress()),
      build: () => _buildBloc(),
      act: (bloc) => bloc.add(const UserManagerEvent.fetchStarted()),
      expect: () => const <UserManagerState>[],
    );
    blocTest<UserManagerBloc, UserManagerState>(
      'should emit status with success on success',
      setUp: () {
        when(() => getCurrentUser()).thenReturn(userTest);
        when(() => fetchUser(any())).thenAnswer(
          (_) async => const Right(userTest),
        );
      },
      seed: () => const UserManagerState(status: UserManagerStatus.initial()),
      build: () => _buildBloc(),
      act: (bloc) => bloc.add(const UserManagerEvent.fetchStarted()),
      expect: () => const <UserManagerState>[
        UserManagerState(status: UserManagerStatus.fetchInProgress()),
        UserManagerState(status: UserManagerStatus.fechtSuccess()),
      ],
    );
    blocTest<UserManagerBloc, UserManagerState>(
      'should emit status with fetchError on error',
      setUp: () {
        when(() => getCurrentUser()).thenReturn(userTest);
        when(() => fetchUser(any())).thenAnswer(
          (_) async => Left(AppError()),
        );
      },
      seed: () => const UserManagerState(status: UserManagerStatus.initial()),
      build: () => _buildBloc(),
      act: (bloc) => bloc.add(const UserManagerEvent.fetchStarted()),
      expect: () => const <UserManagerState>[
        UserManagerState(status: UserManagerStatus.fetchInProgress()),
        UserManagerState(status: UserManagerStatus.fetchError()),
      ],
    );
  });
}
