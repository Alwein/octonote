import 'package:dartz/dartz.dart';
import 'package:octonote/domain/models/app_error/app_error.dart';

abstract class UseCase<Type, Params> {
  Future<Either<Type, AppError>> call(Params params);
}
