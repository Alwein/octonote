import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:octonote/application/constants/colors.dart';
import 'package:octonote/application/constants/layout_values.dart';
import 'package:octonote/presentation/auth/bloc/auth_bloc.dart';
import 'package:octonote/presentation/auth/widgets/auth_widgets.dart';

class SignInView extends StatelessWidget {
  const SignInView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: OctonoteColors.primaryColor,
      body: SingleChildScrollView(
        child: Center(
          child: MaxWidthBuilder(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(LayoutValues.horizontalPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    AuthTitle(title: "Connexion"),
                    EmailInput(),
                    PasswordInput(),
                    SizedBox(height: 30),
                    SignInButton(),
                    SizedBox(height: 15),
                    ButtonSeparator(),
                    SizedBox(height: 15),
                    GoToSignUpButton(),
                    SizedBox(height: 15),
                    GoogleSignInButton(),
                    SizedBox(height: 15),
                    AppleSignInButton(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
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
        label: "Se connecter",
        onPressed: () {},
      ),
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
            "Or",
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
        label: "S'inscrire",
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
      label: "Se connecter avec Google",
      icon: SvgPicture.asset(
        "assets/svg/google.svg",
        color: OctonoteColors.darkColor,
      ),
      onPressed: () {},
    );
  }
}

class AppleSignInButton extends StatelessWidget {
  const AppleSignInButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconAuthButton(
      label: "Se connecter avec Apple",
      icon: SvgPicture.asset(
        "assets/svg/apple.svg",
        color: OctonoteColors.darkColor,
      ),
      onPressed: () {},
    );
  }
}
