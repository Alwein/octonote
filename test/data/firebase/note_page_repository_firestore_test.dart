import 'package:dartz/dartz.dart';
import 'package:fake_cloud_firestore/fake_cloud_firestore.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:octonote/application/utils/app_service.dart' as a_s;
import 'package:octonote/data/firebase/firestore/note_page_repository_firestore.dart';
import 'package:octonote/domain/models/note_page/note_page.dart';
import 'package:octonote/domain/models/octo_user/octo_user.dart';
import 'package:octonote/locator.dart' as sl;

class MockAppService extends Mock implements a_s.AppService {
  @override
  bool getIsTestEnvironment() => true;
}

void main() {
  late FakeFirebaseFirestore instance;
  late NotePageRepositoryFirebaseImpl notePageRepository;

  const OctoUser testUser = OctoUser(uid: "uid");

  setUp(() async {
    await sl.getIt.reset();
    sl.getIt.registerLazySingleton<a_s.AppService>(() => MockAppService());
    instance = FakeFirebaseFirestore();
    notePageRepository = NotePageRepositoryFirebaseImpl(db: instance, user: testUser);
  });
  const NotePage pageTest = NotePage(id: "testId", index: 0, title: "testNotePage");

  group('NotePageRepositoryFirebaseImpl', () {
    group('addNotePage', () {
      test('should add the notePage', () async {
        final result = await notePageRepository.addNotePage(notePage: pageTest);
        expect(result, const Left(unit));
      });
    });

    group('getNotePages', () {
      test('should get all notePages', () async {
        await notePageRepository.addNotePage(notePage: pageTest);
        final result = await notePageRepository.getNotePages();
        expect(result.isLeft(), true);
        expect(result.fold((l) => l, (r) => r), [pageTest]);
      });
    });

    group('removeNotePage', () {
      test('should remove notePage', () async {
        await notePageRepository.addNotePage(notePage: pageTest);
        final result = await notePageRepository.removeNotePage(notePage: pageTest);
        expect(result.isLeft(), true);
      });
    });

    group('updateNotePage', () {
      test('should update the notePage', () async {
        final result = await notePageRepository.updateNotePage(notePage: pageTest);
        expect(result, const Left(unit));
      });
    });
  });
}
