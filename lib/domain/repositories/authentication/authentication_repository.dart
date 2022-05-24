import 'package:dartz/dartz.dart';
import 'package:octonote/application/models/auth_failure.dart';
import 'package:octonote/domain/models/octo_user/octo_user.dart';

abstract class AuthenticationRepository {
  Stream<OctoUser> get user;

  OctoUser get currentUser;

  Future<Either<Unit, AuthFailure>> logInWithEmailAndPassword({
    required String email,
    required String password,
  });

  Future<Either<Unit, AuthFailure>> registerWithEmailAndPassword({
    required String email,
    required String password,
  });

  Future<Either<Unit, AuthFailure>> sendVerificationEmail();

  Future<Either<Unit, AuthFailure>> changePassword({
    required String newPassword,
    required String oldPassword,
    required String email,
  });

  Future<Either<Unit, AuthFailure>> resetPassword({required String email});

  Future<Either<Unit, AuthFailure>> signInWithGoogle();

  Future<Either<Unit, AuthFailure>> signInWithApple();

  Future<Either<Unit, AuthFailure>> logOut();
}
