import 'package:flutter/material.dart';
import 'package:octonote/application/constants/colors.dart';
import 'package:octonote/application/constants/layout_values.dart';
import 'package:octonote/presentation/auth/widgets/auth_widgets.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SignUpAppbar(),
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
                    AuthTitle(title: "Inscription"),
                    EmailInput(),
                    PasswordInput(),
                    SizedBox(height: 30),
                    SignUpButton(),
                    SizedBox(height: 15),
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

class SignUpAppbar extends StatelessWidget with PreferredSizeWidget {
  const SignUpAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 0,
      backgroundColor: OctonoteColors.primaryColor,
      foregroundColor: OctonoteColors.darkColor,
      title: Align(
        alignment: Alignment.centerLeft,
        child: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class SignUpButton extends StatelessWidget {
  const SignUpButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: AuthButton(
        label: "S'inscrire",
        onPressed: () {},
      ),
    );
  }
}
