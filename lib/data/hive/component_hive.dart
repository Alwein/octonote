import 'package:octonote/data/entities/component_entity/component_entity.dart';
import 'package:octonote/domain/models/app_error/app_error.dart';
import 'package:octonote/domain/models/note_page/note_page.dart';
import 'package:octonote/domain/models/component/component.dart';
import 'package:dartz/dartz.dart';
import 'package:octonote/domain/repositories/component/component_repository.dart';
import 'package:hive_flutter/hive_flutter.dart';

class ComponentRepositoryHive implements ComponentRepository {
  ComponentRepositoryHive({HiveInterface? hive}) : _hive = hive ?? Hive;
  final HiveInterface _hive;

  late final Box<dynamic> _componentsBox;
  static const componentBoxName = 'component';

  Future init() async {
    _componentsBox = await _hive.openBox(componentBoxName);
  }

  @override
  Future<Either<Unit, AppError>> addComponent({required Component component}) async {
    final ComponentEntity componentEntity = ComponentEntity.toEntity(component);
    try {
      await _componentsBox.put(component.id, componentEntity.toDocument());
      return Future.value(const Left(unit));
    } catch (e) {
      return Right(AppError(message: e.toString()));
    }
  }

  @override
  Future<Either<List<Component>, AppError>> getComponents({required NotePage notePage}) async {
    try {
      List<Component> components = _componentsBox.values
          .map((doc) => ComponentEntity.fromDocument(doc).toComponent())
          .toList();
      return Future.value(Left(components));
    } catch (e) {
      return Right(AppError(message: e.toString()));
    }
  }

  @override
  Future<Either<Unit, AppError>> removeComponent({required Component component}) async {
    try {
      await _componentsBox.delete(component.id);
      return Future.value(const Left(unit));
    } catch (e) {
      return Right(AppError(message: e.toString()));
    }
  }

  @override
  Future<Either<Unit, AppError>> updateComponent({required Component component}) async {
    final ComponentEntity componentEntity = ComponentEntity.toEntity(component);
    try {
      await _componentsBox.put(component.id, componentEntity.toDocument());
      return Future.value(const Left(unit));
    } catch (e) {
      return Right(AppError(message: e.toString()));
    }
  }
}
