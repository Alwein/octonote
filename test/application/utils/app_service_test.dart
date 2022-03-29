import 'package:octonote/application/utils/app_service.dart';
import 'package:octonote/locator.dart' as sl;
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockAppService extends Mock implements AppService {}

void main() {
  setUp(() async {
    await sl.getIt.reset();
    sl.getIt.registerLazySingleton<AppService>(() => MockAppService());
  });
  group('AppService', () {
    test('Override platform values to false', () {
      when(() => sl.getIt<AppService>().getkIsWeb()).thenReturn(false);
      when(() => sl.getIt<AppService>().getIsIOS()).thenReturn(false);
      when(() => sl.getIt<AppService>().getIsAndroid()).thenReturn(false);
      when(() => sl.getIt<AppService>().getIsMacOS()).thenReturn(false);
      when(() => sl.getIt<AppService>().getIsLinux()).thenReturn(false);
      when(() => sl.getIt<AppService>().getIsWindows()).thenReturn(false);
      expect(sl.getIt<AppService>().getkIsWeb(), false);
      expect(sl.getIt<AppService>().getIsIOS(), false);
      expect(sl.getIt<AppService>().getIsAndroid(), false);
      expect(sl.getIt<AppService>().getIsMacOS(), false);
      expect(sl.getIt<AppService>().getIsLinux(), false);
      expect(sl.getIt<AppService>().getIsWindows(), false);
    });
    test('Override platform values to true', () {
      when(() => sl.getIt<AppService>().getkIsWeb()).thenReturn(true);
      when(() => sl.getIt<AppService>().getIsIOS()).thenReturn(true);
      when(() => sl.getIt<AppService>().getIsAndroid()).thenReturn(true);
      when(() => sl.getIt<AppService>().getIsMacOS()).thenReturn(true);
      when(() => sl.getIt<AppService>().getIsLinux()).thenReturn(true);
      when(() => sl.getIt<AppService>().getIsWindows()).thenReturn(true);
      expect(sl.getIt<AppService>().getkIsWeb(), true);
      expect(sl.getIt<AppService>().getIsIOS(), true);
      expect(sl.getIt<AppService>().getIsAndroid(), true);
      expect(sl.getIt<AppService>().getIsMacOS(), true);
      expect(sl.getIt<AppService>().getIsLinux(), true);
      expect(sl.getIt<AppService>().getIsWindows(), true);
    });
  });
}
