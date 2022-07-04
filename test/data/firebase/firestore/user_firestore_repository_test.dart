import 'package:dartz/dartz.dart';
import 'package:fake_cloud_firestore/fake_cloud_firestore.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:octonote/data/firebase/firestore/user_firestore_repository.dart';
import 'package:octonote/domain/models/octo_user/octo_user.dart';

void main() {
  late FakeFirebaseFirestore instance;
  late UserFirestoreRepositoryImpl userRepository;

  const OctoUser testUser = OctoUser(uid: "uid");

  setUp(() async {
    instance = FakeFirebaseFirestore();
    userRepository = UserFirestoreRepositoryImpl(db: instance);
  });

  group('UserFirestoreRepositoryImpl', () {
    group('setUserData', () {
      test('should add the user', () async {
        final result = await userRepository.setUserData(testUser);
        expect(result, const Left(unit));
      });
    });
  });
}
