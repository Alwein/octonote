import 'package:octonote/domain/models/octo_user/octo_user.dart';
import 'package:octonote/domain/repositories/authentication/authentication_repository.dart';

class GetCurrentUser {
  GetCurrentUser(this.authenticationRepository);

  final AuthenticationRepository authenticationRepository;
  OctoUser call() => authenticationRepository.currentUser;
}
