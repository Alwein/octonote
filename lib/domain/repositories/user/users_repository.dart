import 'package:dartz/dartz.dart';
import 'package:octonote/domain/models/app_error/app_error.dart';
import 'package:octonote/domain/models/octo_user/octo_user.dart';

abstract class UsersRepository {
  Future<Either<AppError, OctoUser>> getUser({required String userId});
}
