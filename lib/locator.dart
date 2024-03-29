import 'package:get_it/get_it.dart';
import 'package:octonote/application/utils/app_service.dart';
import 'package:octonote/data/firebase/auth/firebase_authentication_repository.dart';
import 'package:octonote/data/firebase/firestore/component_repository_firestore.dart';
import 'package:octonote/data/firebase/firestore/note_page_repository_firestore.dart';
import 'package:octonote/data/firebase/firestore/user_firestore_repository.dart';
import 'package:octonote/domain/repositories/authentication/authentication_repository.dart';
import 'package:octonote/domain/repositories/component/component_repository.dart';
import 'package:octonote/domain/repositories/note_page/note_page_repository.dart';
import 'package:octonote/domain/repositories/user/users_repository.dart';
import 'package:octonote/domain/usecases/atomic/users/fetch_user_usecase.dart';
import 'package:octonote/domain/usecases/authentication/auth_usecases.dart';
import 'package:octonote/domain/usecases/usecases.dart';
import 'package:octonote/presentation/app/bloc/app_bloc.dart';
import 'package:octonote/presentation/auth/bloc/auth_bloc.dart';
import 'package:octonote/presentation/auth/pages/sign_in/bloc/sign_in_bloc.dart';
import 'package:octonote/presentation/auth/pages/sign_up/bloc/sign_up_bloc.dart';
import 'package:octonote/presentation/bootstrapping/blocs/user_manager_bloc/user_manager_bloc.dart';
import 'package:octonote/presentation/menu/bloc/menu_bloc.dart';
import 'package:octonote/presentation/notepad/bloc/notepad_bloc.dart';

final getIt = GetIt.instance;

void init() {
  const bool isLocal = false;
  // app
  getIt.registerLazySingleton<AppService>(() => AppServiceImpl());
  getIt.registerFactory<AppBloc>(
    () => AppBloc(
      deleteAccount: getIt<DeleteAccount>(),
      getUser: getIt<GetUser>(),
      logOut: getIt<LogOut>(),
      getCurrentUser: getIt<GetCurrentUser>(),
    ),
  );

  // Bootstrapping
  getIt.registerLazySingleton<UserManagerBloc>(
    () => UserManagerBloc(
      fetchUser: getIt<FetchUser>(),
      getCurrentUser: getIt<GetCurrentUser>(),
    ),
  );

  // repositories
  // getIt.registerLazySingleton<NotePageRepository>(() =>  NotePageRepositoryHive());
  // getIt.registerLazySingleton<ComponentRepository>(() =>  ComponentRepositoryHive());

  getIt.registerLazySingleton<NotePageRepository>(
    () => NotePageRepositoryFirebaseImpl(user: getIt<AuthenticationRepository>().currentUser),
  );
  getIt.registerLazySingleton<ComponentRepository>(
    () => ComponentRepositoryFirestoreImpl(user: getIt<AuthenticationRepository>().currentUser),
  );

  getIt.registerLazySingleton<AuthenticationRepository>(
    () => FirebaseAuthenticationRepositoryImpl(),
  );
  getIt.registerLazySingleton<UsersRepository>(
    () => UsersRepositoryFirestoreImpl(),
  );

  // usecases
  getIt.registerFactory<GetNotePages>(() => GetNotePages(getIt<NotePageRepository>()));
  getIt.registerFactory<AddNotePage>(() => AddNotePage(getIt<NotePageRepository>()));
  getIt.registerFactory<UpdateNotePage>(() => UpdateNotePage(getIt<NotePageRepository>()));
  getIt.registerFactory<RemoveNotePage>(() => RemoveNotePage(getIt<NotePageRepository>()));

  getIt.registerFactory<GetComponents>(() => GetComponents(getIt<ComponentRepository>()));
  getIt.registerFactory<AddComponent>(() => AddComponent(getIt<ComponentRepository>()));
  getIt.registerFactory<UpdateComponent>(() => UpdateComponent(getIt<ComponentRepository>()));
  getIt.registerFactory<RemoveComponent>(() => RemoveComponent(getIt<ComponentRepository>()));

  getIt.registerFactory<RemoveNotePageAndComponents>(
    () => RemoveNotePageAndComponents(
      getComponents: getIt<GetComponents>(),
      removeComponent: getIt<RemoveComponent>(),
      removeNotePage: getIt<RemoveNotePage>(),
    ),
  );

  getIt.registerLazySingleton<GetUser>(
    () => GetUser(getIt<AuthenticationRepository>()),
  );
  getIt.registerFactory<GetCurrentUser>(() => GetCurrentUser(getIt<AuthenticationRepository>()));
  getIt.registerFactory<LogInWithEmailAndPassword>(
    () => LogInWithEmailAndPassword(getIt<AuthenticationRepository>()),
  );
  getIt.registerFactory<RegisterWithEmailAndPassword>(
    () => RegisterWithEmailAndPassword(getIt<AuthenticationRepository>()),
  );
  getIt.registerFactory<SendVerificationEmail>(
    () => SendVerificationEmail(getIt<AuthenticationRepository>()),
  );
  getIt.registerFactory<ChangePassword>(() => ChangePassword(getIt<AuthenticationRepository>()));
  getIt.registerFactory<ResetPassword>(() => ResetPassword(getIt<AuthenticationRepository>()));
  getIt.registerFactory<DeleteAccount>(() => DeleteAccount(getIt<AuthenticationRepository>()));
  getIt
      .registerFactory<SignInWithGoogle>(() => SignInWithGoogle(getIt<AuthenticationRepository>()));
  getIt.registerFactory<SignInWithApple>(() => SignInWithApple(getIt<AuthenticationRepository>()));
  getIt.registerFactory<LogOut>(() => LogOut(getIt<AuthenticationRepository>()));
  getIt.registerFactory<FetchUser>(() => FetchUser(getIt<UsersRepository>()));

  // blocs
  getIt.registerFactory<MenuBloc>(
    () => MenuBloc(
      getNotePages: getIt<GetNotePages>(),
      addNotePage: getIt<AddNotePage>(),
      updateNotePage: getIt<UpdateNotePage>(),
      removeNotePageAndComponents: getIt<RemoveNotePageAndComponents>(),
    ),
  );
  getIt.registerFactoryParam<NotePadBloc, MenuBloc, NoParams>(
    (param1, param2) => NotePadBloc(
      getComponents: getIt<GetComponents>(),
      addComponent: getIt<AddComponent>(),
      updateComponent: getIt<UpdateComponent>(),
      removeComponent: getIt<RemoveComponent>(),
      menuBloc: param1,
    ),
  );

  // auth
  getIt.registerFactory<AuthBloc>(
    () => AuthBloc(
      logInWithEmailAndPassword: getIt<LogInWithEmailAndPassword>(),
      registerWithEmailAndPassword: getIt<RegisterWithEmailAndPassword>(),
      sendVerificationEmail: getIt<SendVerificationEmail>(),
      resetPassword: getIt<ResetPassword>(),
      signInWithGoogle: getIt<SignInWithGoogle>(),
      signInWithApple: getIt<SignInWithApple>(),
    ),
  );

  getIt.registerFactory<SignInBloc>(() => SignInBloc());
  getIt.registerFactory<SignUpBloc>(() => SignUpBloc());
}

class NoParams {}
