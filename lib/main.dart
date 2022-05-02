import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:octonote/firebase_options.dart';
import 'package:octonote/locator.dart' as sl;
import 'package:octonote/presentation/app/app.dart';
import 'package:octonote/presentation/app/bloc_observer.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  sl.init();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await EasyLocalization.ensureInitialized();
  await Hive.initFlutter();
  BlocOverrides.runZoned(
    () {
      runApp(
        EasyLocalization(
          supportedLocales: const [
            Locale('en'),
            Locale('fr'),
          ],
          path: 'assets/translations',
          fallbackLocale: const Locale('en'),
          child: const OctonoteApp(),
        ),
      );
    },
    blocObserver: AppBlocObserver(),
  );
}
