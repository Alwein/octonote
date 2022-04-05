import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:octonote/application/utils/app_service.dart' as a_s;
import 'package:octonote/locator.dart' as sl;

class MockAppService extends Mock implements a_s.AppService {}

void main() {
  setUp(() async {
    await sl.getIt.reset();
    sl.getIt.registerLazySingleton<a_s.AppService>(() => MockAppService());
  });
  group('AppService', () {
    test('should override platform values to false', () {
      when(() => sl.getIt<a_s.AppService>().getkIsWeb()).thenReturn(false);
      when(() => sl.getIt<a_s.AppService>().getIsIOS()).thenReturn(false);
      when(() => sl.getIt<a_s.AppService>().getIsAndroid()).thenReturn(false);
      when(() => sl.getIt<a_s.AppService>().getIsMacOS()).thenReturn(false);
      when(() => sl.getIt<a_s.AppService>().getIsLinux()).thenReturn(false);
      when(() => sl.getIt<a_s.AppService>().getIsWindows()).thenReturn(false);
      expect(a_s.isIOS, false);
      expect(a_s.isMacOS, false);
      expect(a_s.isWindows, false);
      expect(a_s.isLinux, false);
      expect(a_s.isAndroid, false);
      expect(a_s.isWeb, false);
    });
    test('should override platform values to true', () {
      when(() => sl.getIt<a_s.AppService>().getkIsWeb()).thenReturn(true);
      when(() => sl.getIt<a_s.AppService>().getIsIOS()).thenReturn(true);
      when(() => sl.getIt<a_s.AppService>().getIsAndroid()).thenReturn(true);
      when(() => sl.getIt<a_s.AppService>().getIsMacOS()).thenReturn(true);
      when(() => sl.getIt<a_s.AppService>().getIsLinux()).thenReturn(true);
      when(() => sl.getIt<a_s.AppService>().getIsWindows()).thenReturn(true);
      expect(a_s.isIOS, true);
      expect(a_s.isMacOS, true);
      expect(a_s.isWindows, true);
      expect(a_s.isLinux, true);
      expect(a_s.isAndroid, true);
      expect(a_s.isWeb, true);
    });
  });
}
