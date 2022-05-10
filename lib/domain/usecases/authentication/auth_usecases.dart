import 'package:octonote/domain/usecases/authentication/change_password_usecase.dart';
import 'package:octonote/domain/usecases/authentication/get_current_user_usecase.dart';
import 'package:octonote/domain/usecases/authentication/get_user_usecase.dart';
import 'package:octonote/domain/usecases/authentication/log_out_usecase.dart';
import 'package:octonote/domain/usecases/authentication/login_with_email_and_password_usease.dart';
import 'package:octonote/domain/usecases/authentication/register_with_email_and_password_usecase.dart';
import 'package:octonote/domain/usecases/authentication/reset_password_usecase.dart';
import 'package:octonote/domain/usecases/authentication/send_verification_email_usecase.dart';
import 'package:octonote/domain/usecases/authentication/sign_in_with_apple_usecase.dart';
import 'package:octonote/domain/usecases/authentication/sign_in_with_google_usecase.dart';

export 'change_password_usecase.dart';
export 'get_current_user_usecase.dart';
export 'get_user_usecase.dart';
export 'log_out_usecase.dart';
export 'login_with_email_and_password_usease.dart';
export 'register_with_email_and_password_usecase.dart';
export 'reset_password_usecase.dart';
export 'send_verification_email_usecase.dart';
export 'sign_in_with_apple_usecase.dart';
export 'sign_in_with_google_usecase.dart';

class AuthUseCases {
  AuthUseCases({
    required this.getUser,
    required this.getCurrentUser,
    required this.logInWithEmailAndPassword,
    required this.registerWithEmailAndPassword,
    required this.sendVerificationEmail,
    required this.changePassword,
    required this.resetPassword,
    required this.signInWithGoogle,
    required this.signInWithApple,
    required this.logOut,
  });

  final GetUser getUser;
  final GetCurrentUser getCurrentUser;
  final LogInWithEmailAndPassword logInWithEmailAndPassword;
  final RegisterWithEmailAndPassword registerWithEmailAndPassword;
  final SendVerificationEmail sendVerificationEmail;
  final ChangePassword changePassword;
  final ResetPassword resetPassword;
  final SignInWithGoogle signInWithGoogle;
  final SignInWithApple signInWithApple;
  final LogOut logOut;
}
