import 'package:get_it/get_it.dart';
import 'package:octonote/application/utils/app_service.dart';
import 'package:octonote/data/hive/component_hive.dart';
import 'package:octonote/data/hive/note_page_hive.dart';
import 'package:octonote/domain/repositories/component/component_repository.dart';
import 'package:octonote/domain/repositories/note_page/note_page_repository.dart';
import 'package:octonote/domain/usecases/component/component_usecases.dart';
import 'package:octonote/domain/usecases/note_page/note_page_usecases.dart';
import 'package:octonote/presentation/menu/bloc/menu_bloc.dart';
import 'package:octonote/presentation/notepad/bloc/notepad_bloc.dart';

final getIt = GetIt.instance;

void init() {
  // app
  getIt.registerLazySingleton<AppService>(() => AppServiceImpl());
  // repositories
  getIt.registerLazySingleton<NotePageRepository>(() => NotePageRepositoryHive());
  getIt.registerLazySingleton<ComponentRepository>(() => ComponentRepositoryHive());
  // usecases
  getIt.registerFactory<GetNotePages>(() => GetNotePages(getIt<NotePageRepository>()));
  getIt.registerFactory<AddNotePage>(() => AddNotePage(getIt<NotePageRepository>()));
  getIt.registerFactory<UpdateNotePage>(() => UpdateNotePage(getIt<NotePageRepository>()));
  getIt.registerFactory<RemoveNotePage>(() => RemoveNotePage(getIt<NotePageRepository>()));

  getIt.registerFactory<GetComponents>(() => GetComponents(getIt<ComponentRepository>()));
  getIt.registerFactory<AddComponent>(() => AddComponent(getIt<ComponentRepository>()));
  getIt.registerFactory<UpdateComponent>(() => UpdateComponent(getIt<ComponentRepository>()));
  getIt.registerFactory<RemoveComponent>(() => RemoveComponent(getIt<ComponentRepository>()));

  // blocs
  getIt.registerFactory<MenuBloc>(
    () => MenuBloc(
      getNotePages: getIt<GetNotePages>(),
      addNotePage: getIt<AddNotePage>(),
      updateNotePage: getIt<UpdateNotePage>(),
      removeNotePage: getIt<RemoveNotePage>(),
    ),
  );
  getIt.registerFactory<NotePadBloc>(
    () => NotePadBloc(
      getComponents: getIt<GetComponents>(),
      addComponent: getIt<AddComponent>(),
      updateComponent: getIt<UpdateComponent>(),
      removeComponent: getIt<RemoveComponent>(),
    ),
  );
}
