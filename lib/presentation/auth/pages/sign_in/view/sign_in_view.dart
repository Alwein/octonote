import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:octonote/application/constants/colors.dart';
import 'package:octonote/application/constants/layout_values.dart';
import 'package:octonote/application/utils/generic_blocs/generic_registration_bloc/generic_registration_bloc.dart';
import 'package:octonote/presentation/auth/bloc/auth_bloc.dart';
import 'package:octonote/presentation/auth/pages/sign_in/bloc/sign_in_bloc.dart';
import 'package:octonote/presentation/auth/widgets/auth_widgets.dart';

class SignInView extends StatelessWidget {
  const SignInView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignInBloc(),
      child: Scaffold(
        backgroundColor: OctonoteColors.primaryColor,
        body: SingleChildScrollView(
          child: Center(
            child: MaxWidthBuilder(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(LayoutValues.horizontalPadding),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AuthTitle(title: tr("sign_in_page.sign_in_title")),
                      const SignInEmailFormInput(),
                      const SignInPasswordFormInput(),
                      const SignInErrorMessage(),
                      const SignInButton(),
                      const SizedBox(height: 15),
                      const ButtonSeparator(),
                      const SizedBox(height: 15),
                      const GoToSignUpButton(),
                      const SizedBox(height: 15),
                      const GoogleSignInButton(),
                      const SizedBox(height: 15),
                      const AppleSignInButton(),
                      const SizedBox(height: 15),
                      const ForgotPasswordButton()
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
      onChanged: (value) =>
          context.read<SignInBloc>().add(GenericRegistrationEvent.emailChanged(value)),
    );
  }
}

class SignInPasswordFormInput extends StatelessWidget {
  const SignInPasswordFormInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PasswordFormInput(
      onChanged: (value) =>
          context.read<SignInBloc>().add(GenericRegistrationEvent.passwordChanged(value)),
    );
  }
}

class SignInButton extends StatelessWidget {
  const SignInButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: OutlinedAuthButton(
        label: tr("sign_in_page.sign_in_button"),
        onPressed: () => context.read<SignInBloc>().add(
              GenericRegistrationEvent.validate(
                onValidateSuccess: (email, password) => context
                    .read<AuthBloc>()
                    .add(AuthEvent.logInWithEmailAndPassword(email: email, password: password)),
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
    return SizedBox(
      width: double.infinity,
      child: AuthButton(
        label: tr("sign_in_page.sign_up_button"),
        onPressed: () => context.read<AuthBloc>().add(const AuthEvent.signUpStarted()),
      ),
    );
  }
}

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
    return TextButton(
      child: Text(
        tr("sign_in_page.forgot_password_button"),
        style: Theme.of(context).textTheme.button,
      ),
      onPressed: () => context.read<SignInBloc>().add(
            GenericRegistrationEvent.validate(
              includePassword: false,
              onValidateSuccess: (email, password) =>
                  context.read<AuthBloc>().add(AuthEvent.resetPassword(email: email)),
            ),
          ),
    );
  }
}
