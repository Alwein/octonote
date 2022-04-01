import 'package:dartz/dartz.dart';
import 'package:octonote/domain/models/app_error/app_error.dart';
import 'package:octonote/domain/repositories/component/component_repository.dart';

class InitComponent {
  InitComponent(this.componentRepository);

  final ComponentRepository componentRepository;

  Future<Either<Unit, AppError>> call() async {
    return await componentRepository.init();
  }
}
