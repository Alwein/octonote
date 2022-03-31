import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:octonote/locator.dart' as sl;
import 'package:octonote/presentation/app/app.dart';
import 'package:octonote/presentation/app/bloc_observer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  sl.init();
  await EasyLocalization.ensureInitialized();
  await Hive.initFlutter();
  BlocOverrides.runZoned(
    () {
      runApp(
        const OctonoteApp(),
      );
    },
    blocObserver: AppBlocObserver(),
  );
}
