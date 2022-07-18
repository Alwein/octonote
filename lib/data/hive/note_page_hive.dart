import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:octonote/data/entities/note_page_entity/note_page_entity.dart';
import 'package:octonote/domain/models/app_error/app_error.dart';
import 'package:octonote/domain/models/note_page/note_page.dart';
import 'package:octonote/domain/repositories/note_page/note_page_repository.dart';

class NotePageRepositoryHive implements NotePageRepository {
  NotePageRepositoryHive({HiveInterface? hive}) : _hive = hive ?? Hive;
  final HiveInterface _hive;
  bool isInitialized = false;

  late final Box<dynamic> _notePagesBox;
  static const notePageBoxName = 'note_page';

  FutureOr<void> initializeOrNot() async {
    if (isInitialized) {
      return;
    }
    _notePagesBox = await _hive.openBox(notePageBoxName);
    isInitialized = true;
  }

  @override
  Future<Either<Unit, AppError>> addNotePage({required NotePage notePage}) async {
    final NotePageEntity notePageEntity = NotePageEntity.toEntity(notePage);
    try {
      await initializeOrNot();
      await _notePagesBox.put(notePage.id, notePageEntity.toDocument());
      return Future.value(const Left(unit));
    } catch (e) {
      return Right(AppError(message: e.toString()));
    }
  }

  @override
  Future<Either<List<NotePage>, AppError>> getNotePages() async {
    try {
      await initializeOrNot();
      final List<NotePage> notePages = _notePagesBox.values
          .map(
            (doc) =>
                NotePageEntity.fromDocument(Map<String, dynamic>.from(doc as Map<dynamic, dynamic>))
                    .toNotePage(),
          )
          .toList();
      notePages.sort((a, b) => a.index.compareTo(b.index));
      return Future.value(Left(notePages));
    } catch (e) {
      return Right(AppError(message: e.toString()));
    }
  }

  @override
  Future<Either<Unit, AppError>> removeNotePage({required NotePage notePage}) async {
    try {
      await initializeOrNot();
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
      await initializeOrNot();
      await _notePagesBox.put(notePage.id, notePageEntity.toDocument());
      return Future.value(const Left(unit));
    } catch (e) {
      return Right(AppError(message: e.toString()));
    }
  }
}
