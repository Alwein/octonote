import 'package:flutter_test/flutter_test.dart';
import 'package:octonote/domain/models/octo_user/octo_user.dart';

void main() {
  group("OctoUser", () {
    test("should support value comparison", () {
      const user = OctoUser(uid: "uid", email: "email", userName: "userName");
      expect(user, user);
    });

    test("copyWith should returns the same object when no propreties are passed", () {
      const user = OctoUser(uid: "uid", email: "email", userName: "userName");
      expect(user.copyWith(uid: user.uid), user);
    });
  });
}
