import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:fake_cloud_firestore/fake_cloud_firestore.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:octonote/data/entities/octo_user_entity.dart/octo_user_entity.dart';
import 'package:octonote/data/firebase/firebase_utils/collection_names.dart';
import 'package:octonote/data/firebase/firestore/user_firestore_repository.dart';
import 'package:octonote/domain/models/octo_user/octo_user.dart';

void main() {
  late FakeFirebaseFirestore instance;
  late UsersRepositoryFirestoreImpl usersRepositoryFirestoreImpl;

  var currentDir = Directory.current.path;

  if (!currentDir.endsWith('/test')) {
    currentDir = '$currentDir/test';
  }

  group('getUser', () {
    group('success', () {
      setUp(() async {
        instance = FakeFirebaseFirestore();
        usersRepositoryFirestoreImpl = UsersRepositoryFirestoreImpl(db: instance);
      });
      test('should return the expected authenticated user', () async {
        const OctoUser user = OctoUser(
          uid: "test",
        );
        await instance
            .collection(FirestoreCollectionsNames.USERS_COLLECTION)
            .doc(user.uid)
            .set(user.toDocument);
        final result = await usersRepositoryFirestoreImpl.getUser(userId: user.uid);
        expect(result, const Right(user));
      });

      test('should return an empty user if there is no data fetched', () async {
        const OctoUser user = OctoUser(
          uid: "test",
        );
        // await instance.collection(ComoriesCollections.users).doc(user.userId).set(user.toJson());

        final result = await usersRepositoryFirestoreImpl.getUser(userId: user.uid);
        expect(result, const Right(OctoUser.empty()));
      });
    });
  });
}
