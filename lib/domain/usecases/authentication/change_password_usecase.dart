import 'package:dartz/dartz.dart';
import 'package:octonote/application/models/auth_failure.dart';
import 'package:octonote/domain/repositories/authentication/authentication_repository.dart';

class ChangePassword {
  ChangePassword(this.authenticationRepository);

  final AuthenticationRepository authenticationRepository;
  Future<Either<Unit, AuthFailure>> call({
    required String newPassword,
    required String oldPassword,
    required String email,
  }) =>
      authenticationRepository.changePassword(
        newPassword: newPassword,
        oldPassword: oldPassword,
        email: email,
      );
}
