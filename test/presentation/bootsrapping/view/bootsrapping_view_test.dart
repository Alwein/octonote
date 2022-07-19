import 'package:bloc_test/bloc_test.dart';
import 'package:easy_localization/easy_localization.dart';
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
        .thenReturn(const UserManagerState(status: UserManagerStatus.initial()));
  });

  group('BootstrappingView', () {
    test('has a page', () {
      expect(BootstrappingView.page(), isA<MaterialPage>());
    });

    testWidgets('renders a Router', (tester) async {
      await tester.runAsync(() async {
        await mountLocalizedPage(
          tester,
          MyTestApp(
            page: BlocProvider.value(
              value: sl.getIt<AuthBloc>(),
              child: const BootstrappingView(),
            ),
          ),
        );
      });
      expect(find.byType(Router), findsWidgets);
    });
  });

  group('Listeners', () {
    testWidgets('Show a snackbar on error', (tester) async {
      whenListen(
        userManagerBloc,
        Stream.fromIterable([const UserManagerState(status: UserManagerStatus.fetchError())]),
      );

      await tester.runAsync(() async {
        await mountLocalizedPage(
          tester,
          MyTestApp(
            page: BlocProvider.value(
              value: sl.getIt<AuthBloc>(),
              child: const BootstrappingView(),
            ),
          ),
        );
      });

      await tester.pump();
      expect(find.text(tr('user_data_error.data_recuperation_error')), findsWidgets);
    });

    testWidgets(
      'Show a snackbar on new message',
      (tester) async {
        whenListen(
          userManagerBloc,
          Stream.fromIterable([const UserManagerState(), const UserManagerState(message: 'test')]),
        );

        await tester.runAsync(() async {
          await mountLocalizedPage(
            tester,
            MyTestApp(
              page: BlocProvider.value(
                value: sl.getIt<AuthBloc>(),
                child: const BootstrappingView(),
              ),
            ),
          );
        });

        await tester.pump();
        expect(find.text("test"), findsWidgets);
      },
      skip: true,
    ); // fails when run in row with other tests
  });
}
