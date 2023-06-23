import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:octonote/application/constants/colors.dart';
import 'package:octonote/application/constants/layout_values.dart';
import 'package:octonote/application/utils/generic_blocs/generic_registration_bloc/generic_registration_bloc.dart';
import 'package:octonote/locator.dart' as sl;
import 'package:octonote/presentation/auth/bloc/auth_bloc.dart';
import 'package:octonote/presentation/auth/pages/sign_in/bloc/sign_in_bloc.dart';
import 'package:octonote/presentation/auth/widgets/auth_widgets.dart';
import 'package:octonote/presentation/widgets/octo_snackbar.dart';

class SignInView extends StatelessWidget {
  const SignInView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl.getIt<SignInBloc>(),
      child: Scaffold(
        backgroundColor: OctonoteColors.primaryColor,
        body: SingleChildScrollView(
          child: Center(
            child: MaxWidthBuilder(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(LayoutValues.horizontalPadding),
                  child: Column(
                    children: [
                      AuthTitle(title: tr("sign_in_page.sign_in_title")),
                      const SignInEmailFormInput(),
                      const SignInPasswordFormInput(),
                      const ForgotPasswordButton(),
                      const SignInErrorMessage(),
                      const SignInButton(),
                      const SizedBox(height: 15),
                      const ButtonSeparator(),
                      const SizedBox(height: 15),
                      const Row(
                        children: [
                          Expanded(child: GoogleSignInButton()),
                          SizedBox(width: 10),
                          Expanded(child: AppleSignInButton()),
                        ],
                      ),
                      const SizedBox(height: 15),
                      const GoToSignUpButton(),
                      const SizedBox(height: 15),
                      // const ShowPrivacyPolicy(),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class SignInEmailFormInput extends StatelessWidget {
  const SignInEmailFormInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return EmailFormInput(
      onChanged: (value) => context.read<SignInBloc>().add(GenericRegistrationEvent.emailChanged(value)),
    );
  }
}

class SignInPasswordFormInput extends StatelessWidget {
  const SignInPasswordFormInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PasswordFormInput(
      onChanged: (value) => context.read<SignInBloc>().add(GenericRegistrationEvent.passwordChanged(value)),
    );
  }
}

class SignInButton extends StatelessWidget {
  const SignInButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: AuthButton(
        label: tr("sign_in_page.sign_in_button"),
        onPressed: () => context.read<SignInBloc>().add(
              GenericRegistrationEvent.validate(
                onValidateSuccess: (email, password) =>
                    context.read<AuthBloc>().add(AuthEvent.logInWithEmailAndPassword(email: email, password: password)),
              ),
            ),
      ),
    );
  }
}

class SignInErrorMessage extends StatelessWidget {
  const SignInErrorMessage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInBloc, GenericRegistrationState>(
      builder: (context, state) {
        return ErrorMessage(state: state);
      },
    );
  }
}

class ButtonSeparator extends StatelessWidget {
  const ButtonSeparator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(child: Divider()),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: LayoutValues.horizontalPadding),
          child: Text(
            tr("sign_in_page.or_separator"),
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
        const Expanded(child: Divider()),
      ],
    );
  }
}

class GoToSignUpButton extends StatelessWidget {
  const GoToSignUpButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextWithButton(
      text: "Pas encore de compte ? ",
      label: tr("sign_in_page.sign_up_button"),
      onTap: () => context.read<AuthBloc>().add(const AuthEvent.signUpStarted()),
    );
  }
}

// class ShowPrivacyPolicy extends StatelessWidget {
//   const ShowPrivacyPolicy({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return TextWithButton(
//       text: "Consultez nos règles de",
//       label: "confidentialité",
//       onTap: () => launchUrl(Uri.parse('https://sites.google.com/view/octonote-app/accueil')),
//     );
//   }
// }

class GoogleSignInButton extends StatelessWidget {
  const GoogleSignInButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconAuthButton(
      label: tr("sign_in_page.sign_in_with_google_button"),
      icon: SvgPicture.asset(
        "assets/svg/google.svg",
        color: OctonoteColors.darkColor,
      ),
      onPressed: () => context.read<AuthBloc>().add(const AuthEvent.logInWithGoogle()),
    );
  }
}

class AppleSignInButton extends StatelessWidget {
  const AppleSignInButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconAuthButton(
      label: tr("sign_in_page.sign_with_apple_button"),
      icon: SvgPicture.asset(
        "assets/svg/apple.svg",
        color: OctonoteColors.darkColor,
      ),
      onPressed: () => context.read<AuthBloc>().add(const AuthEvent.logInWithApple()),
    );
  }
}

class ForgotPasswordButton extends StatelessWidget {
  const ForgotPasswordButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      alignment: Alignment.centerRight,
      child: TextButton(
        child: Text(
          tr("sign_in_page.forgot_password_button"),
          style: Theme.of(context).textTheme.labelLarge,
        ),
        onPressed: () => context.read<SignInBloc>().add(
              GenericRegistrationEvent.validate(
                includePassword: false,
                onValidateSuccess: (email, password) {
                  context.read<AuthBloc>().add(AuthEvent.resetPassword(email: email));
                  showSnackbar(context, tr('auth_success.send_email_verification_snackbar_text'));
                },
              ),
            ),
      ),
    );
  }
}
