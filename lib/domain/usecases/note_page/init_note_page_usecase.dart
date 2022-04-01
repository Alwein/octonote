import 'package:dartz/dartz.dart';
import 'package:octonote/domain/models/app_error/app_error.dart';
import 'package:octonote/domain/repositories/note_page/note_page_repository.dart';

class InitNotePage {
  InitNotePage(this.notePageRepository);

  final NotePageRepository notePageRepository;

  Future<Either<Unit, AppError>> call() async {
    return await notePageRepository.init();
  }
}
