import 'package:dartz/dartz.dart';
import 'package:octonote/domain/models/app_error/app_error.dart';
import 'package:octonote/domain/models/component/component.dart';
import 'package:octonote/domain/repositories/component/component_repository.dart';

class UpdateComponent {
  UpdateComponent(this.componentRepository);

  final ComponentRepository componentRepository;

  Future<Either<Unit, AppError>> call({required Component component}) async {
    return await componentRepository.updateComponent(component: component);
  }
}
