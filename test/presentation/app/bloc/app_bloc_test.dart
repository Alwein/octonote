import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:octonote/domain/models/octo_user/octo_user.dart';
import 'package:octonote/domain/usecases/authentication/auth_usecases.dart';
import 'package:octonote/presentation/app/bloc/app_bloc.dart';

class MockGetUser with Mock implements GetUser {}

class MockLogOut with Mock implements LogOut {}

class MockDeleteAccount with Mock implements DeleteAccount {}

class MockGetCurrentUser with Mock implements GetCurrentUser {}

void main() {
  late GetUser getUser;
  late LogOut logOut;
  late DeleteAccount deleteAccount;
  late GetCurrentUser getCurrentUser;

  Stream<OctoUser> octoUserStream() async* {}

  setUp(() {
    getUser = MockGetUser();
    logOut = MockLogOut();
    deleteAccount = MockDeleteAccount();
    getCurrentUser = MockGetCurrentUser();

    when(() => getUser()).thenAnswer((_) => octoUserStream());
  });

  const OctoUser testUser = OctoUser(uid: "uid");
  const OctoUser testEmptyUser = OctoUser.empty();

  AppBloc _buildAppBloc() => AppBloc(
        getUser: getUser,
        logOut: logOut,
        deleteAccount: deleteAccount,
        getCurrentUser: getCurrentUser,
      );

  group('AppBloc', () {
    test('initial state should be unauthenticated if user is not authenticated', () {
      when(() => getCurrentUser()).thenReturn(testEmptyUser);
      final appBloc = _buildAppBloc();
      expect(appBloc.state, const AppState.unauthenticated());
    });
    test('initial state should be authenticated if user is authenticated', () {
      when(() => getCurrentUser()).thenReturn(testUser);
      final appBloc = _buildAppBloc();
      expect(appBloc.state, const AppState.authenticated(user: testUser));
    });

    blocTest<AppBloc, AppState>(
      'should emit new state with upadted user when user change',
      setUp: () => when(() => getCurrentUser()).thenReturn(testUser),
      build: () => _buildAppBloc(),
      seed: () => const AppState.unauthenticated(),
      act: (bloc) => bloc.add(const AppEvent.appUserChanged(user: testUser)),
      expect: () => const <AppState>[AppState.authenticated(user: testUser)],
    );

    blocTest<AppBloc, AppState>(
      'should not emit any state on logout',
      setUp: () {
        when(() => getCurrentUser()).thenReturn(testUser);
        when(() => logOut()).thenAnswer((_) async => const Left(unit));
      },
      build: () => _buildAppBloc(),
      seed: () => const AppState.authenticated(user: testUser),
      act: (bloc) => bloc.add(const AppEvent.appLogoutRequested()),
      expect: () => const <AppState>[],
    );

    blocTest<AppBloc, AppState>(
      'should delete user and emit nothing',
      setUp: () {
        when(() => getCurrentUser()).thenReturn(testUser);
        when(() => deleteAccount()).thenAnswer((_) async => const Left(unit));
      },
      build: () => _buildAppBloc(),
      seed: () => const AppState.authenticated(user: testUser),
      act: (bloc) => bloc.add(const AppEvent.appDeleteAccount()),
      expect: () => const <AppState>[],
    );
  });
}
