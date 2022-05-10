import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:octonote/domain/models/octo_user/octo_user.dart';
import 'package:octonote/domain/repositories/authentication/authentication_repository.dart';
import 'package:octonote/domain/usecases/authentication/get_current_user_usecase.dart';
import 'package:octonote/domain/usecases/authentication/get_user_usecase.dart';
import 'package:octonote/domain/usecases/authentication/login_with_email_and_password_usease.dart';

class MockAuthenticationRepository with Mock implements AuthenticationRepository {}

void main() {
  late final AuthenticationRepository authenticationRepository;

  setUp(() {
    authenticationRepository = MockAuthenticationRepository();
  });

  group('getUser', () {
    Stream<OctoUser> fakeStream() async* {}

    test('Should return a OctoUser stream', () {
      when(() => authenticationRepository.user).thenAnswer((_) => fakeStream());
      final GetUser usecase = GetUser(authenticationRepository);
      final result = usecase();
      expect(result, isA<Stream<OctoUser>>());
    });
  });

  group('getCurrentUser', () {
    const OctoUser testOctouser = OctoUser.empty();
    test('should return a OctoUser', () {
      when(() => authenticationRepository.currentUser).thenReturn(testOctouser);
      final GetCurrentUser usecase = GetCurrentUser(authenticationRepository);
      final result = usecase();
      expect(result, testOctouser);
    });
  });
  group('logInWithEmailAndPassword', () {
    test('should login with email and password from repository', () async {
      when(
        () => authenticationRepository.logInWithEmailAndPassword(
          email: any(named: "email"),
          password: any(named: "password"),
        ),
      ).thenAnswer((_) async => const Left(unit));
      final LogInWithEmailAndPassword usecase = LogInWithEmailAndPassword(authenticationRepository);
      final result = await usecase(email: 'test', password: 'test');
      expect(result, const Left(unit));
    });
  });

  group('registerWithEmailAndPassword', () {
    test('should register with email and password from repository', () async {
      when(
        () => authenticationRepository.registerWithEmailAndPassword(
          email: any(named: "email"),
          password: any(named: "password"),
        ),
      ).thenAnswer((_) async => const Left(unit));
      final RegisterWithEmailAndPassword usecase =
          RegisterWithEmailAndPassword(authenticationRepository);
      final result = await usecase(email: 'test', password: 'test');
      expect(result, const Left(unit));
    });
  });

  group('sendVerificationEmail', () {
    test('should send verification email from repository', () async {
      when(
        () => authenticationRepository.sendVerificationEmail(),
      ).thenAnswer((_) async => const Left(unit));
      final SendVerificationEmail usecase = SendVerificationEmail(authenticationRepository);
      final result = await usecase();
      expect(result, const Left(unit));
    });
  });

  group('changePassword', () {
    test('should change password from repository', () async {
      when(
        () => authenticationRepository.changePassword(
          newPassword: any(named: "newPassword"),
          oldPassword: any(named: "oldPassword"),
          email: any(named: "email"),
        ),
      ).thenAnswer((_) async => const Left(unit));
      final ChangePassword usecase = ChangePassword(authenticationRepository);
      final result = await usecase(
        newPassword: 'test',
        oldPassword: 'test',
        email: 'test',
      );
      expect(result, const Left(unit));
    });
  });

  group('resetPassword', () {
    test('should reset password from repository', () async {
      when(
        () => authenticationRepository.resetPassword(
          email: any(named: "email"),
        ),
      ).thenAnswer((_) async => const Left(unit));
      final ResetPassword usecase = ResetPassword(authenticationRepository);
      final result = await usecase(email: 'test');
      expect(result, const Left(unit));
    });
  });

  group('signInWithGoogle', () {
    test('should sign in with google from repository', () async {
      when(
        () => authenticationRepository.signInWithGoogle(),
      ).thenAnswer((_) async => const Left(unit));
      final SignInWithGoogle usecase = SignInWithGoogle(authenticationRepository);
      final result = await usecase();
      expect(result, const Left(unit));
    });
  });

  group('signInWithApple', () {
    test('should sign in with apple from repository', () async {
      when(
        () => authenticationRepository.signInWithApple(),
      ).thenAnswer((_) async => const Left(unit));
      final SignInWithApple usecase = SignInWithApple(authenticationRepository);
      final result = await usecase();
      expect(result, const Left(unit));
    });
  });

  group('logOut', () {
    test('should log out from repository', () async {
      when(
        () => authenticationRepository.logOut(),
      ).thenAnswer((_) async => const Left(unit));
      final LogOut usecase = LogOut(authenticationRepository);
      final result = await usecase();
      expect(result, const Left(unit));
    });
  });
}
