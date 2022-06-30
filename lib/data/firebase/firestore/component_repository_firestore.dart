import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:octonote/data/entities/component_entity/component_entity.dart';
import 'package:octonote/data/firebase/firebase_utils/collection_names.dart';
import 'package:octonote/domain/models/app_error/app_error.dart';
import 'package:octonote/domain/models/component/component.dart';
import 'package:octonote/domain/models/note_page/note_page.dart';
import 'package:octonote/domain/models/octo_user/octo_user.dart';
import 'package:octonote/domain/repositories/component/component_repository.dart';

class ComponentRepositoryFirestoreImpl implements ComponentRepository {
  ComponentRepositoryFirestoreImpl({FirebaseFirestore? db, required OctoUser user})
      : _db = db ?? FirebaseFirestore.instance,
        _user = user,
        super();

  final FirebaseFirestore _db;
  final OctoUser _user;

  @override
  Future<Either<Unit, AppError>> addComponent({required Component component}) async {
    try {
      final ComponentEntity componentEntity = ComponentEntity.toEntity(component);
      await _db
          .collection(FirestoreCollectionsNames.USERS_COLLECTION)
          .doc(_user.uid)
          .collection(FirestoreCollectionsNames.NOTEPAGES_COLLECTION)
          .doc(component.pageId)
          .collection(FirestoreCollectionsNames.COMPONENT_COLLECTION)
          .add(componentEntity.toDocument());
      return const Left(unit);
    } on FirebaseException catch (error) {
      return Right(AppError(message: "Firebase Error : ${error.message}"));
    } catch (e) {
      return Right(AppError(message: "Internal Error : $e"));
    }
  }

  @override
  Future<Either<List<Component>, AppError>> getComponents({required NotePage notePage}) async {
    try {
      final result = await _db
          .collection(FirestoreCollectionsNames.USERS_COLLECTION)
          .doc(_user.uid)
          .collection(FirestoreCollectionsNames.NOTEPAGES_COLLECTION)
          .doc(notePage.id)
          .collection(FirestoreCollectionsNames.COMPONENT_COLLECTION)
          .get();
      final List<Component> components =
          result.docs.map((e) => ComponentEntity.fromDocument(e.data()).toComponent()).toList();
      return Left(components);
    } on FirebaseException catch (error) {
      return Right(AppError(message: "Firebase Error : ${error.message}"));
    } catch (e) {
      return Right(AppError(message: "Internal Error : $e"));
    }
  }

  @override
  Future<Either<Unit, AppError>> removeComponent({required Component component}) async {
    try {
      await _db
          .collection(FirestoreCollectionsNames.USERS_COLLECTION)
          .doc(_user.uid)
          .collection(FirestoreCollectionsNames.NOTEPAGES_COLLECTION)
          .doc(component.pageId)
          .collection(FirestoreCollectionsNames.COMPONENT_COLLECTION)
          .doc(component.id)
          .delete();
      return const Left(unit);
    } on FirebaseException catch (error) {
      return Right(AppError(message: "Firebase Error : ${error.message}"));
    } catch (e) {
      return Right(AppError(message: "Internal Error : $e"));
    }
  }

  @override
  Future<Either<Unit, AppError>> updateComponent({required Component component}) async {
    try {
      final ComponentEntity componentEntity = ComponentEntity.toEntity(component);
      await _db
          .collection(FirestoreCollectionsNames.USERS_COLLECTION)
          .doc(_user.uid)
          .collection(FirestoreCollectionsNames.NOTEPAGES_COLLECTION)
          .doc(component.pageId)
          .collection(FirestoreCollectionsNames.COMPONENT_COLLECTION)
          .doc(component.id)
          .set(componentEntity.toDocument());
      return const Left(unit);
    } on FirebaseException catch (error) {
      return Right(AppError(message: "Firebase Error : ${error.message}"));
    } catch (e) {
      return Right(AppError(message: "Internal Error : $e"));
    }
  }
}
