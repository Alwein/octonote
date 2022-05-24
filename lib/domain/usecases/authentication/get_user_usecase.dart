import 'package:octonote/domain/models/octo_user/octo_user.dart';
import 'package:octonote/domain/repositories/authentication/authentication_repository.dart';

class GetUser {
  GetUser(this.authenticationRepository);

  final AuthenticationRepository authenticationRepository;
  Stream<OctoUser> call() => authenticationRepository.user;
}
