import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:octonote/data/entities/octo_user_entity.dart/octo_user_entity.dart';
import 'package:octonote/data/firebase/firebase_utils/collection_names.dart';
import 'package:octonote/domain/models/app_error/app_error.dart';
import 'package:octonote/domain/models/octo_user/octo_user.dart';
import 'package:octonote/domain/repositories/user/users_repository.dart';

class UsersRepositoryFirestoreImpl implements UsersRepository {
  UsersRepositoryFirestoreImpl({FirebaseFirestore? db})
      : _db = db ?? FirebaseFirestore.instance,
        super();

  final FirebaseFirestore _db;

  @override
  Future<Either<AppError, OctoUser>> getUser({required String userId}) async {
    try {
      final query =
          await _db.collection(FirestoreCollectionsNames.USERS_COLLECTION).doc(userId).get();
      final json = query.data();

      if (json == null) {
        return const Right(OctoUser.empty());
      }

      return Right(OctoUserEntity.fromDocument(json));
    } on FirebaseException catch (e) {
      print("Firebase Exception: ${e.code}");
      return Left(AppError(message: "server"));
    } catch (error) {
      print("error: $error");
      return Left(AppError(message: "internal"));
    }
  }
}
