import 'package:dartz/dartz.dart';
import 'package:octonote/domain/models/app_error/app_error.dart';
import 'package:octonote/domain/models/component/component.dart';
import 'package:octonote/domain/models/note_page/note_page.dart';

abstract class ComponentRepository {
  Future<Either<List<Component>, AppError>> getComponents({required NotePage notePage});
  Future<Either<Unit, AppError>> addComponent({required Component component});
  Future<Either<Unit, AppError>> removeComponent({required Component component});
  Future<Either<Unit, AppError>> updateComponent({required Component component});
}
