import 'package:octonote/domain/models/octo_user/octo_user.dart';

extension OctoUserEntity on OctoUser {
  Map<String, dynamic> toDocument() {
    return {
      "uid": uid,
      "email": email,
      "userName": userName,
    };
  }

  static OctoUser fromDocument(Map<String, dynamic> doc) {
    return OctoUser(
      uid: doc["uid"] as String,
      email: doc["email"] as String,
      userName: doc["userName"] as String,
    );
  }
}
