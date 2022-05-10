import 'package:freezed_annotation/freezed_annotation.dart';

part 'octo_user.freezed.dart';

@freezed
class OctoUser with _$OctoUser {
  const factory OctoUser({
    required String uid,
    String? email,
    String? photoURL,
    String? userName,
  }) = _OctoUser;

  const factory OctoUser.empty({
    @Default('') String uid,
    String? email,
    String? photoURL,
    String? userName,
  }) = _EmptyOctoUser;
}

extension OctoUserEx on OctoUser {
  bool get isEmpty => this is _EmptyOctoUser;
  bool get isNotEmpty => this is! _EmptyOctoUser;
}
