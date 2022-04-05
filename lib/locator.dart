import 'package:get_it/get_it.dart';
import 'package:octonote/application/utils/app_service.dart';
import 'package:octonote/data/hive/component_hive.dart';
import 'package:octonote/data/hive/note_page_hive.dart';
import 'package:octonote/domain/repositories/component/component_repository.dart';
import 'package:octonote/domain/repositories/note_page/note_page_repository.dart';

final getIt = GetIt.instance;

void init() {
  getIt.registerLazySingleton<AppService>(() => AppService());
  getIt.registerLazySingleton<NotePageRepository>(() => NotePageRepositoryHive());
  getIt.registerLazySingleton<ComponentRepository>(() => ComponentRepositoryHive());
}
