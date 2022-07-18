import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:octonote/data/entities/octo_user_entity.dart/octo_user_entity.dart';
import 'package:octonote/data/firebase/firebase_utils/collection_names.dart';
import 'package:octonote/domain/models/app_error/app_error.dart';
import 'package:octonote/domain/models/octo_user/octo_user.dart';

abstract class UserRepository {
  Future<Either<Unit, AppError>> setUserData(OctoUser user);
}

class UserFirestoreRepositoryImpl implements UserRepository {
  UserFirestoreRepositoryImpl({FirebaseFirestore? db})
      : _db = db ?? FirebaseFirestore.instance,
        super();

  final FirebaseFirestore _db;

  @override
  Future<Either<Unit, AppError>> setUserData(OctoUser user) async {
    try {
      final userEntity = user.toDocument();
      await _db
          .collection(FirestoreCollectionsNames.USERS_COLLECTION)
          .doc(user.uid)
          .set(userEntity);
      return const Left(unit);
    } on FirebaseException catch (error) {
      return Right(AppError(message: "Firebase Error : ${error.message}"));
    } catch (e) {
      return Right(AppError(message: "Internal Error : $e"));
    }
  }
}
