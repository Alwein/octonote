import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:octonote/data/entities/note_page_entity/note_page_entity.dart';
import 'package:octonote/data/firebase/firebase_utils/collection_names.dart';
import 'package:octonote/domain/models/app_error/app_error.dart';
import 'package:octonote/domain/models/note_page/note_page.dart';
import 'package:octonote/domain/models/octo_user/octo_user.dart';
import 'package:octonote/domain/repositories/note_page/note_page_repository.dart';

class NotePageRepositoryFirebaseImpl implements NotePageRepository {
  NotePageRepositoryFirebaseImpl({FirebaseFirestore? db, required OctoUser user})
      : _db = db ?? FirebaseFirestore.instance,
        _user = user,
        super();

  final FirebaseFirestore _db;
  final OctoUser _user;

  @override
  Future<Either<Unit, AppError>> addNotePage({required NotePage notePage}) async {
    try {
      final NotePageEntity notePageEntity = NotePageEntity.toEntity(notePage);
      await _db
          .collection(FirestoreCollectionsNames.USERS_COLLECTION)
          .doc(_user.uid)
          .collection(FirestoreCollectionsNames.NOTEPAGES_COLLECTION)
          .add(notePageEntity.toDocument());
      return const Left(unit);
    } on FirebaseException catch (error) {
      return Right(AppError(message: "Firebase Error : ${error.message}"));
    } catch (e) {
      return Right(AppError(message: "Internal Error : $e"));
    }
  }

  @override
  Future<Either<List<NotePage>, AppError>> getNotePages() async {
    try {
      final result = await _db
          .collection(FirestoreCollectionsNames.USERS_COLLECTION)
          .doc(_user.uid)
          .collection(FirestoreCollectionsNames.NOTEPAGES_COLLECTION)
          .get();
      final List<NotePage> notePages =
          result.docs.map((e) => NotePageEntity.fromDocument(e.data()).toNotePage()).toList();
      return Left(notePages);
    } on FirebaseException catch (error) {
      return Right(AppError(message: "Firebase Error : ${error.message}"));
    } catch (e) {
      return Right(AppError(message: "Internal Error : $e"));
    }
  }

  @override
  Future<Either<Unit, AppError>> removeNotePage({required NotePage notePage}) async {
    try {
      await _db
          .collection(FirestoreCollectionsNames.USERS_COLLECTION)
          .doc(_user.uid)
          .collection(FirestoreCollectionsNames.NOTEPAGES_COLLECTION)
          .doc(notePage.id)
          .delete();
      return const Left(unit);
    } on FirebaseException catch (error) {
      return Right(AppError(message: "Firebase Error : ${error.message}"));
    } catch (e) {
      return Right(AppError(message: "Internal Error : $e"));
    }
  }

  @override
  Future<Either<Unit, AppError>> updateNotePage({required NotePage notePage}) async {
    try {
      final NotePageEntity notePageEntity = NotePageEntity.toEntity(notePage);
      await _db
          .collection(FirestoreCollectionsNames.USERS_COLLECTION)
          .doc(_user.uid)
          .collection(FirestoreCollectionsNames.NOTEPAGES_COLLECTION)
          .doc(notePage.id)
          .set(notePageEntity.toDocument());
      return const Left(unit);
    } on FirebaseException catch (error) {
      return Right(AppError(message: "Firebase Error : ${error.message}"));
    } catch (e) {
      return Right(AppError(message: "Internal Error : $e"));
    }
  }
}
