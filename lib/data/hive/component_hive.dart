import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:octonote/data/entities/component_entity/component_entity.dart';
import 'package:octonote/domain/models/app_error/app_error.dart';
import 'package:octonote/domain/models/component/component.dart';
import 'package:octonote/domain/models/note_page/note_page.dart';
import 'package:octonote/domain/repositories/component/component_repository.dart';

class ComponentRepositoryHive implements ComponentRepository {
  ComponentRepositoryHive({HiveInterface? hive}) : _hive = hive ?? Hive;
  final HiveInterface _hive;
  bool isInitialized = false;

  late final Box<dynamic> _componentsBox;
  static const componentBoxName = 'component';

  FutureOr<void> initializeOrNot() async {
    if (isInitialized) {
      return;
    }
    _componentsBox = await _hive.openBox(componentBoxName);
    isInitialized = true;
  }

  @override
  Future<Either<Unit, AppError>> addComponent({required Component component}) async {
    final ComponentEntity componentEntity = ComponentEntity.toEntity(component);
    try {
      await initializeOrNot();
      await _componentsBox.put(component.id, componentEntity.toDocument());
      return Future.value(const Left(unit));
    } catch (e) {
      return Right(AppError(message: e.toString()));
    }
  }

  @override
  Future<Either<List<Component>, AppError>> getComponents({required NotePage notePage}) async {
    try {
      await initializeOrNot();
      final List<Component> components = _componentsBox.values
          .map(
            (doc) => ComponentEntity.fromDocument(
                    Map<String, dynamic>.from(doc as Map<dynamic, dynamic>))
                .toComponent(),
          )
          .toList();
      final selectedComponent =
          components.where((component) => component.pageId == notePage.id).toList();
      return Future.value(Left(selectedComponent));
    } catch (e) {
      return Right(AppError(message: e.toString()));
    }
  }

  @override
  Future<Either<Unit, AppError>> removeComponent({required Component component}) async {
    try {
      await initializeOrNot();
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
      await initializeOrNot();
      await _componentsBox.put(component.id, componentEntity.toDocument());
      return Future.value(const Left(unit));
    } catch (e) {
      return Right(AppError(message: e.toString()));
    }
  }
}
