import 'package:dartz/dartz.dart';
import 'package:octonote/application/models/auth_failure.dart';
import 'package:octonote/domain/repositories/authentication/authentication_repository.dart';

class SignInWithApple {
  SignInWithApple(this.authenticationRepository);

  final AuthenticationRepository authenticationRepository;
  Future<Either<Unit, AuthFailure>> call() => authenticationRepository.signInWithApple();
}
