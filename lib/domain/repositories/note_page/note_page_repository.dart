import 'package:dartz/dartz.dart';
import 'package:octonote/domain/models/app_error/app_error.dart';
import 'package:octonote/domain/models/note_page/note_page.dart';

abstract class NotePageRepository {
  Future<Either<Unit, AppError>> init();
  Future<Either<List<NotePage>, AppError>> getNotePages();
  Future<Either<Unit, AppError>> addNotePage({required NotePage notePage});
  Future<Either<Unit, AppError>> removeNotePage({required NotePage notePage});
  Future<Either<Unit, AppError>> updateNotePage({required NotePage notePage});
}
