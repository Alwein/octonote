import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:octonote/application/utils/app_service.dart';
import 'package:octonote/locator.dart' as sl;
import 'package:shared_preferences/shared_preferences.dart';

class MyTestApp extends StatelessWidget {
  const MyTestApp({this.page});

  final Widget? page;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      home: Scaffold(
        body: page,
      ),
    );
  }
}

Future<void> mountLocalizedPage(WidgetTester tester, Widget? page) async {
  await tester.pumpWidget(createLocalizedWidgetForTesting(MyTestApp(page: page)));
  await tester.idle();
  await tester.pump();
  await tester.pump(const Duration(milliseconds: 400));
}

Widget createLocalizedWidgetForTesting(Widget app) {
  return EasyLocalization(
    supportedLocales: const [Locale('en'), Locale('fr')],
    path: 'assets/translations',
    fallbackLocale: const Locale('en'),
    child: app,
  );
}

Future<void> initServices() async {
  SharedPreferences.setMockInitialValues({});
  TestWidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await initServiceLocator();
}

class MockAppService with Mock implements AppService {}

Future<void> initServiceLocator() async {
  await sl.getIt.reset();
  sl.getIt.registerLazySingleton<AppService>(() => MockAppService());
  when(() => sl.getIt<AppService>().getkIsWeb()).thenReturn(false);
}

extension WidgetTesterEx on WidgetTester {
  Future<void> setScreenSize({
    required double width,
    required double height,
    double pixelDensity = 1.0,
  }) async {
    final size = Size(width, height);
    await binding.setSurfaceSize(size);
    binding.window.physicalSizeTestValue = size;
    binding.window.devicePixelRatioTestValue = pixelDensity;
  }
}
