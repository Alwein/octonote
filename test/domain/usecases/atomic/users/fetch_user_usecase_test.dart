import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:octonote/domain/models/app_error/app_error.dart';
import 'package:octonote/domain/models/octo_user/octo_user.dart';
import 'package:octonote/domain/repositories/user/users_repository.dart';
import 'package:octonote/domain/usecases/atomic/users/fetch_user_usecase.dart';

class MockUsersRepository with Mock implements UsersRepository {}

void main() {
  late UsersRepository usersRepository;

  setUp(() {
    usersRepository = MockUsersRepository();
  });

  group('FetchUser', () {
    const OctoUser user = OctoUser(
      uid: "test",
    );
    test('should return a ComoriesUser from usersRepository when getUser succeeds', () async {
      when(
        () => usersRepository.getUser(userId: any(named: "userId")),
      ).thenAnswer((_) async => const Right(user));
      final usecase = FetchUser(usersRepository);
      final result = await usecase(FetchUserParams(userId: 'test'));
      expect(result, const Right(user));
    });

    const emptyUser = OctoUser.empty();

    test('should try 5 attempts if user fetched from usersRepository is always empty', () async {
      when(
        () => usersRepository.getUser(userId: any(named: "userId")),
      ).thenAnswer((_) async => const Right(emptyUser));
      final usecase = FetchUser(usersRepository);
      final result = await usecase(FetchUserParams(userId: 'test'));
      expect(result.fold((l) => l, (r) => r), isA<AppError>());
      verify(() => usersRepository.getUser(userId: any(named: "userId"))).called(5);
    });

    test('should return a Failure from usersRepository when getUser fails', () async {
      when(
        () => usersRepository.getUser(userId: any(named: "userId")),
      ).thenAnswer((_) async => Left(AppError(message: "server")));
      final usecase = FetchUser(usersRepository);
      final result = await usecase(FetchUserParams(userId: 'test'));
      expect(result.fold((l) => l, (r) => r), isA<AppError>());
    });
  });
}
