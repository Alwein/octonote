import 'package:octonote/data/entities/note_page_entity/note_page_entity.dart';
import 'package:octonote/domain/models/app_error/app_error.dart';
import 'package:octonote/domain/models/note_page/note_page.dart';
import 'package:dartz/dartz.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../domain/repositories/note_page/note_page_repository.dart';

class NotePageRepositoryHive implements NotePageRepository {
  NotePageRepositoryHive({HiveInterface? hive}) : _hive = hive ?? Hive;
  final HiveInterface _hive;

  late final Box<dynamic> _notePagesBox;
  static const notePageBoxName = 'note_page';

  @override
  Future<Either<Unit, AppError>> init() async {
    try {
      _notePagesBox = await _hive.openBox(notePageBoxName);
      return const Left(unit);
    } catch (e) {
      return Right(AppError(message: e.toString()));
    }
  }

  @override
  Future<Either<Unit, AppError>> addNotePage({required NotePage notePage}) async {
    final NotePageEntity notePageEntity = NotePageEntity.toEntity(notePage);
    try {
      await _notePagesBox.put(notePage.id, notePageEntity.toDocument());
      return Future.value(const Left(unit));
    } catch (e) {
      return Right(AppError(message: e.toString()));
    }
  }

  @override
  Future<Either<List<NotePage>, AppError>> getNotePages() async {
    try {
      List<NotePage> notePages =
          _notePagesBox.values.map((doc) => NotePageEntity.fromDocument(doc).toNotePage()).toList();
      return Future.value(Left(notePages));
    } catch (e) {
      return Right(AppError(message: e.toString()));
    }
  }

  @override
  Future<Either<Unit, AppError>> removeNotePage({required NotePage notePage}) async {
    try {
      await _notePagesBox.delete(notePage.id);
      return Future.value(const Left(unit));
    } catch (e) {
      return Right(AppError(message: e.toString()));
    }
  }

  @override
  Future<Either<Unit, AppError>> updateNotePage({required NotePage notePage}) async {
    final NotePageEntity notePageEntity = NotePageEntity.toEntity(notePage);
    try {
      await _notePagesBox.put(notePage.id, notePageEntity.toDocument());
      return Future.value(const Left(unit));
    } catch (e) {
      return Right(AppError(message: e.toString()));
    }
  }
}
