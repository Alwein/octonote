import 'package:dartz/dartz.dart';
import 'package:fake_cloud_firestore/fake_cloud_firestore.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:octonote/application/factories/component_factory.dart';
import 'package:octonote/application/utils/app_service.dart' as a_s;
import 'package:octonote/data/firebase/component_repository_firestore.dart';
import 'package:octonote/domain/models/component/component.dart';
import 'package:octonote/domain/models/note_page/note_page.dart';
import 'package:octonote/domain/models/octo_user/octo_user.dart';
import 'package:octonote/locator.dart' as sl;

import '../../test_helpers/test_helpers.dart';

class MockAppService extends Mock implements a_s.AppService {
  @override
  bool getIsTestEnvironment() => true;
}

void main() {
  late FakeFirebaseFirestore instance;
  late ComponentRepositoryFirestore componentRepository;

  const OctoUser testUser = OctoUser(uid: "uid");

  setUp(() async {
    await sl.getIt.reset();
    sl.getIt.registerLazySingleton<a_s.AppService>(() => MockAppService());
    initServices();
    instance = FakeFirebaseFirestore();
    componentRepository = ComponentRepositoryFirestore(db: instance, user: testUser);
  });
  const NotePage pageTest = NotePage(id: "testId", index: 0, title: "testNotePage");

  group('ComponentRepositoryFirestore', () {
    group('addComponent', () {
      test('should add the component', () async {
        final Component component = ComponentFactory.createOne(
          index: 0,
          page: pageTest,
          content: const ComponentContent.text(content: "content"),
        );
        final result = await componentRepository.addComponent(component: component);
        expect(result, const Left(unit));
      });
    });

    group('getComponents', () {
      test('should get all components', () async {
        final Component component = ComponentFactory.createOne(
          index: 0,
          page: pageTest,
          content: const ComponentContent.text(content: "content"),
        );
        await componentRepository.addComponent(component: component);
        final result = await componentRepository.getComponents(notePage: pageTest);
        expect(result.isLeft(), true);
        expect(result.fold((l) => l, (r) => r), [component]);
      });
    });

    group('removeComponent', () {
      test('should remove component', () async {
        final Component component = ComponentFactory.createOne(
          index: 0,
          page: pageTest,
          content: const ComponentContent.text(content: "content"),
        );
        await componentRepository.addComponent(component: component);
        final result = await componentRepository.removeComponent(component: component);
        expect(result.isLeft(), true);
      });
    });

    group('updateComponent', () {
      test('should update the component', () async {
        final Component component = ComponentFactory.createOne(
          index: 0,
          page: pageTest,
          content: const ComponentContent.text(content: "content"),
        );
        final result = await componentRepository.updateComponent(component: component);
        expect(result, const Left(unit));
      });
    });
  });
}
