import 'package:dartz/dartz.dart';
import 'package:octonote/domain/models/app_error/app_error.dart';
import 'package:octonote/domain/models/note_page/note_page.dart';
import 'package:octonote/domain/repositories/note_page/note_page_repository.dart';

class GetNotePages {
  GetNotePages(this.notePageRepository);

  final NotePageRepository notePageRepository;

  Future<Either<List<NotePage>, AppError>> call() async {
    return await notePageRepository.getNotePages();
  }
}
