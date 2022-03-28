import 'package:get_it/get_it.dart';
import 'package:octonote/application/get_platform.dart';

final getIt = GetIt.instance;

void init() {
  getIt.registerLazySingleton<AppService>(() => AppService());
}
