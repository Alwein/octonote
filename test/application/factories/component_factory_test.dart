import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:octonote/application/factories/component_factory.dart';
import 'package:octonote/application/utils/app_service.dart' as a_s;
import 'package:octonote/domain/models/note_page/note_page.dart';
import 'package:octonote/locator.dart' as sl;

class MockAppService extends Mock implements a_s.AppService {
  @override
  bool getIsTestEnvironment() => false;
}

void main() {
  setUp(() async {
    await sl.getIt.reset();
    sl.getIt.registerLazySingleton<a_s.AppService>(() => a_s.AppServiceImpl());
  });
  group('ComponentFactory', () {
    test('should return a Component with unic auto generated id', () {
      final notePageList = List.generate(
        10,
        (i) => ComponentFactory.createOne(index: i, page: const NotePage.empty()),
      );
      expect(
        List.from(notePageList)
          ..toSet()
          ..toList(),
        notePageList,
      );
    });
  });
}
