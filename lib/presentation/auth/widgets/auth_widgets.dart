import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:octonote/application/constants/colors.dart';

class AuthTitle extends StatelessWidget {
  const AuthTitle({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      title,
      maxLines: 2,
      style: Theme.of(context).textTheme.headline2,
    );
  }
}

class AuthTextInput extends StatelessWidget {
  const AuthTextInput({
    Key? key,
    required this.label,
    this.hintText,
    this.textInputType,
    this.obscureText = false,
    this.suffixIcon,
  }) : super(key: key);
  final String label;
  final String? hintText;
  final TextInputType? textInputType;
  final bool obscureText;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FormTitle(label: label),
        TextFormField(
          keyboardType: textInputType,
          obscureText: obscureText,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            suffixIcon: suffixIcon,
            hintText: hintText,
            filled: true,
            fillColor: OctonoteColors.secondaryColor,
            border: InputBorder.none,
            focusedBorder: UnderlineInputBorder(
              borderSide: const BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.circular(10.0),
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: const BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.circular(10.0),
            ),
            errorBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
          ),
        ),
      ],
    );
  }
}

class FormTitle extends StatelessWidget {
  const FormTitle({Key? key, required this.label}) : super(key: key);
  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 5),
      child: Text(
        label,
        style: Theme.of(context).textTheme.headline5,
      ),
    );
  }
}

class OutlinedAuthButton extends StatelessWidget {
  const OutlinedAuthButton({Key? key, required this.label, required this.onPressed})
      : super(key: key);
  final String label;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
        padding: MaterialStateProperty.all(const EdgeInsets.symmetric(vertical: 15)),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
            side: const BorderSide(color: OctonoteColors.darkColor),
          ),
        ),
        backgroundColor: MaterialStateProperty.all(OctonoteColors.primaryColor),
      ),
      child: Text(
        label,
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}

class AuthButton extends StatelessWidget {
  const AuthButton({Key? key, required this.label, required this.onPressed}) : super(key: key);
  final String label;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
        padding: MaterialStateProperty.all(const EdgeInsets.symmetric(vertical: 15)),
        backgroundColor: MaterialStateProperty.all(OctonoteColors.darkColor),
      ),
      child: Text(
        label,
        style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: OctonoteColors.primaryColor),
      ),
    );
  }
}

class IconAuthButton extends StatelessWidget {
  const IconAuthButton({Key? key, required this.label, required this.onPressed, required this.icon})
      : super(key: key);
  final String label;
  final Widget icon;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
        padding: MaterialStateProperty.all(const EdgeInsets.symmetric(vertical: 15)),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
            side: const BorderSide(color: OctonoteColors.darkColor),
          ),
        ),
        backgroundColor: MaterialStateProperty.all(Colors.white),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: AutoSizeText(
                label,
                maxLines: 1,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: SizedBox(
              height: 20,
              child: icon,
            ),
          ),
        ],
      ),
    );
  }
}

class MaxWidthBuilder extends StatelessWidget {
  const MaxWidthBuilder({Key? key, required this.child}) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxWidth: 300,
      ),
      child: child,
    );
  }
}

class EmailInput extends StatelessWidget {
  const EmailInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AuthTextInput(
      label: "Email",
      hintText: "Enter your email",
      textInputType: TextInputType.emailAddress,
    );
  }
}

class PasswordInput extends StatefulWidget {
  const PasswordInput({Key? key}) : super(key: key);

  @override
  State<PasswordInput> createState() => _PasswordInputState();
}

class _PasswordInputState extends State<PasswordInput> {
  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return AuthTextInput(
      obscureText: isObscure,
      suffixIcon: TextButton(
        child: Icon(
          isObscure ? Icons.visibility : Icons.visibility_off,
          color: OctonoteColors.darkColor,
        ),
        onPressed: () => setState(() {
          isObscure = !isObscure;
        }),
      ),
      label: "Password",
      hintText: "Enter your password",
    );
  }
}
