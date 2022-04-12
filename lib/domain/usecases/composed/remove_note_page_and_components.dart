import 'package:dartz/dartz.dart';
import 'package:octonote/domain/models/app_error/app_error.dart';
import 'package:octonote/domain/models/component/component.dart';
import 'package:octonote/domain/models/note_page/note_page.dart';
import 'package:octonote/domain/usecases/usecases.dart';

class RemoveNotePageAndComponents {
  RemoveNotePageAndComponents({
    required this.removeNotePage,
    required this.removeComponent,
    required this.getComponents,
  });

  final RemoveNotePage removeNotePage;
  final RemoveComponent removeComponent;
  final GetComponents getComponents;

  Future<Either<Unit, AppError>> call({required NotePage notePage}) async {
    final componentsQuery = await getComponents(notePage: notePage);

    return componentsQuery.fold(
      (components) => _deleteData(components, notePage),
      (error) => Right(error),
    );
  }

  Future<Either<Unit, AppError>> _deleteData(List<Component> components, NotePage notePage) async {
    final deleteResult =
        await Future.wait(components.map((comp) => removeComponent(component: comp)).toList());
    AppError? operationError;
    for (final element in deleteResult) {
      element.fold(
        (success) {},
        (error) {
          operationError = error;
        },
      );
    }
    if (operationError != null) {
      return Right(operationError!);
    }

    return removeNotePage(notePage: notePage);
  }
}
