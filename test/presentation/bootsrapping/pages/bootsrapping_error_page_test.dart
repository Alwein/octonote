import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:octonote/data/firebase/firestore/user_firestore_repository.dart';
import 'package:octonote/domain/repositories/authentication/authentication_repository.dart';
import 'package:octonote/locator.dart' as sl;
import 'package:octonote/presentation/auth/bloc/auth_bloc.dart';
import 'package:octonote/presentation/bootstrapping/bootstrapping.dart';

import '../../../test_helpers/test_helpers.dart';

class MockAuthenticationRepository extends Mock implements AuthenticationRepository {}

class MockUsersRepositoryFirestoreImpl extends Mock implements UsersRepositoryFirestoreImpl {}

class MockAuthBloc extends MockBloc<AuthEvent, AuthState> implements AuthBloc {}

class FakeAuthEvent extends Fake implements AuthEvent {}

class FakeAuthState extends Fake implements AuthState {}

class MockUserManagerBloc extends MockBloc<UserManagerEvent, UserManagerState>
    implements UserManagerBloc {}

class FakeUserManagerEvent extends Fake implements UserManagerEvent {}

class FakeUserManagerState extends Fake implements UserManagerState {}

void main() {
  late AuthenticationRepository authenticationRepository;
  late AuthBloc authBloc;
  late UserManagerBloc userManagerBloc;
  late UsersRepositoryFirestoreImpl usersRepositoryFirestoreImpl;

  setUpAll(() {
    registerFallbackValue(FakeAuthEvent());
    registerFallbackValue(FakeAuthState());
    registerFallbackValue(FakeUserManagerEvent());
    registerFallbackValue(FakeUserManagerState());
  });

  setUp(() async {
    await initServices();

    authenticationRepository = MockAuthenticationRepository();
    usersRepositoryFirestoreImpl = MockUsersRepositoryFirestoreImpl();
    authBloc = MockAuthBloc();
    userManagerBloc = MockUserManagerBloc();

    sl.getIt.registerLazySingleton<AuthenticationRepository>(() => authenticationRepository);
    sl.getIt
        .registerLazySingleton<UsersRepositoryFirestoreImpl>(() => usersRepositoryFirestoreImpl);

    sl.getIt.registerFactory<AuthBloc>(() => authBloc);
    sl.getIt.registerFactory<UserManagerBloc>(() => userManagerBloc);

    when(() => authBloc.state).thenReturn(const AuthState());
    when(() => userManagerBloc.state)
        .thenReturn(const UserManagerState(status: UserManagerStatus.fetchError()));
  });

  group('Error Page', () {
    test('has a page', () {
      expect(BootstrappingErrorPage.noTransitionPage(), isA<Page>());
    });

    testWidgets('renders a RetryButton', (tester) async {
      await tester.runAsync(() async {
        await mountLocalizedPage(
          tester,
          MyTestApp(
            page: BlocProvider.value(
              value: authBloc,
              child: const BootstrappingErrorPage(),
            ),
          ),
        );
      });
      expect(find.byType(RetryButton), findsWidgets);
    });
  });

  group('Calls', () {
    testWidgets('signInStarted is called when sign_in_button button is pressed', (tester) async {
      await tester.runAsync(() async {
        await mountLocalizedPage(
          tester,
          MyTestApp(
            page: BlocProvider.value(
              value: authBloc,
              child: BlocProvider.value(
                value: userManagerBloc,
                child: const BootstrappingErrorPage(),
              ),
            ),
          ),
        );
      });
      await tester.tap(find.byType(RetryButton));
      verify(() => userManagerBloc.add(const UserManagerEvent.fetchStarted())).called(1);
    });
  });
}
