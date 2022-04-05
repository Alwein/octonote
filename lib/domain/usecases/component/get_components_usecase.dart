import 'package:dartz/dartz.dart';
import 'package:octonote/domain/models/app_error/app_error.dart';
import 'package:octonote/domain/models/component/component.dart';
import 'package:octonote/domain/models/note_page/note_page.dart';
import 'package:octonote/domain/repositories/component/component_repository.dart';

class GetComponents {
  GetComponents(this.componentRepository);

  final ComponentRepository componentRepository;

  Future<Either<List<Component>, AppError>> call({required NotePage notePage}) async {
    return componentRepository.getComponents(notePage: notePage);
  }
}
