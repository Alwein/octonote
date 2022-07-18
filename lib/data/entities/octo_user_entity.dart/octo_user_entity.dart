import 'package:octonote/domain/models/octo_user/octo_user.dart';

extension OctoUserEntity on OctoUser {
  static OctoUser fromDocument(Map<String, dynamic> doc) {
    return OctoUser(
      uid: doc["userId"] as String,
      userName: doc["name"] as String?,
      photoURL: doc["profilePhoto"] as String?,
    );
  }
}
