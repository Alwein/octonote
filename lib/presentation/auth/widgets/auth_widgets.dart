import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:octonote/application/constants/colors.dart';
import 'package:octonote/application/constants/layout_values.dart';
import 'package:octonote/application/utils/generic_blocs/generic_registration_bloc/generic_registration_bloc.dart';

class AuthTitle extends StatelessWidget {
  const AuthTitle({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      title,
      maxLines: 2,
      style: Theme.of(context).textTheme.displayMedium,
    );
  }
}

// TODO: Faire la prise en charge des messages d'erreur
class AuthTextInput extends StatelessWidget {
  const AuthTextInput({
    Key? key,
    required this.label,
    this.hintText,
    this.textInputType,
    this.obscureText = false,
    this.suffixIcon,
    this.onChanged,
  }) : super(key: key);
  final String label;
  final String? hintText;
  final TextInputType? textInputType;
  final bool obscureText;
  final Widget? suffixIcon;
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FormTitle(label: label),
        OctoTextForm(
          hintText: hintText,
          textInputType: textInputType,
          suffixIcon: suffixIcon,
          onChanged: onChanged,
          obscureText: obscureText,
        ),
      ],
    );
  }
}

class OctoTextForm extends StatelessWidget {
  const OctoTextForm({
    Key? key,
    this.hintText,
    this.textInputType,
    this.obscureText = false,
    this.suffixIcon,
    this.onChanged,
  }) : super(key: key);
  final String? hintText;
  final TextInputType? textInputType;
  final bool obscureText;
  final Widget? suffixIcon;
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
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
          borderRadius: BorderRadius.circular(OctoRadius.defaultRadius),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: const BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.circular(OctoRadius.defaultRadius),
        ),
        errorBorder: InputBorder.none,
        disabledBorder: InputBorder.none,
      ),
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
        style: Theme.of(context).textTheme.headlineSmall,
      ),
    );
  }
}

class OutlinedAuthButton extends StatelessWidget {
  const OutlinedAuthButton({Key? key, required this.label, required this.onPressed}) : super(key: key);
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
            borderRadius: BorderRadius.circular(OctoRadius.defaultRadius),
            side: const BorderSide(color: OctonoteColors.darkColor),
          ),
        ),
        backgroundColor: MaterialStateProperty.all(OctonoteColors.primaryColor),
      ),
      child: Text(
        label,
        style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.w500),
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
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(OctoRadius.defaultRadius),
          ),
        ),
      ),
      child: Text(
        label,
        style: Theme.of(context)
            .textTheme
            .bodyLarge!
            .copyWith(color: OctonoteColors.primaryColor, fontWeight: FontWeight.w500),
      ),
    );
  }
}

class IconAuthButton extends StatelessWidget {
  const IconAuthButton({Key? key, required this.label, required this.onPressed, required this.icon}) : super(key: key);
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
            borderRadius: BorderRadius.circular(OctoRadius.defaultRadius),
            side: const BorderSide(color: OctonoteColors.darkColor),
          ),
        ),
        backgroundColor: MaterialStateProperty.all(Colors.white),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: AutoSizeText(
              label,
              maxLines: 1,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          SizedBox(
            height: 20,
            child: icon,
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

class EmailFormInput extends StatelessWidget {
  const EmailFormInput({Key? key, required this.onChanged}) : super(key: key);
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return AuthTextInput(
      label: tr("auth_widgets.email_label"),
      hintText: tr("auth_widgets.email_hitn"),
      textInputType: TextInputType.emailAddress,
      onChanged: onChanged,
    );
  }
}

class PasswordFormInput extends StatefulWidget {
  const PasswordFormInput({Key? key, required this.onChanged}) : super(key: key);
  final void Function(String)? onChanged;

  @override
  State<PasswordFormInput> createState() => _PasswordFormInputState();
}

class _PasswordFormInputState extends State<PasswordFormInput> {
  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return AuthTextInput(
      onChanged: widget.onChanged,
      obscureText: isObscure,
      suffixIcon: TextButton(
        child: Icon(
          isObscure ? Icons.visibility_outlined : Icons.visibility,
          color: OctonoteColors.darkColor,
        ),
        onPressed: () => setState(() {
          isObscure = !isObscure;
        }),
      ),
      label: tr("auth_widgets.password_label"),
      hintText: tr("auth_widgets.password_hitn"),
    );
  }
}

class ErrorMessage extends StatelessWidget {
  const ErrorMessage({Key? key, required this.state}) : super(key: key);
  final GenericRegistrationState state;

  @override
  Widget build(BuildContext context) {
    final text = getRegistrationFormsErrorMessage(state);
    return text != null
        ? Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Text(
                text,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.red),
              ),
            ),
          )
        : Container(
            height: 30,
          );
  }

  String? getRegistrationFormsErrorMessage(GenericRegistrationState state) {
    String? text;
    if (state.email.isInvalid && state.password.isInvalid) {
      text = tr("auth_widgets.email_and_password_invalid_message");
    } else if (state.email.isInvalid) {
      text = tr("auth_widgets.email_invalid_message");
    } else if (state.password.isInvalid) {
      text = tr("auth_widgets.password_invalid_message");
    }
    return text;
  }
}

class TextWithButton extends StatelessWidget {
  const TextWithButton({
    Key? key,
    required this.onTap,
    required this.text,
    required this.label,
  }) : super(key: key);
  final void Function() onTap;
  final String text;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      alignment: Alignment.centerLeft,
      child: RichText(
        text: TextSpan(
          children: <TextSpan>[
            TextSpan(text: text, style: Theme.of(context).textTheme.bodyMedium),
            TextSpan(
              text: label,
              style: Theme.of(context).textTheme.labelLarge,
              recognizer: TapGestureRecognizer()..onTap = onTap,
            ),
          ],
        ),
      ),
    );
  }
}
