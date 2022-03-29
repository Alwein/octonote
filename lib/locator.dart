import 'package:get_it/get_it.dart';
import 'package:octonote/application/utils/app_service.dart';

final getIt = GetIt.instance;

void init() {
  getIt.registerLazySingleton<AppService>(() => AppService());
}
