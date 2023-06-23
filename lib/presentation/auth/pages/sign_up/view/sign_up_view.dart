import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:octonote/application/constants/colors.dart';
import 'package:octonote/application/constants/layout_values.dart';
import 'package:octonote/application/utils/generic_blocs/generic_registration_bloc/generic_registration_bloc.dart';
import 'package:octonote/locator.dart' as sl;
import 'package:octonote/presentation/auth/bloc/auth_bloc.dart';
import 'package:octonote/presentation/auth/pages/sign_up/bloc/sign_up_bloc.dart';
import 'package:octonote/presentation/auth/widgets/auth_widgets.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl.getIt<SignUpBloc>(),
      child: Scaffold(
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
                    children: [
                      AuthTitle(title: tr("sign_up_page.sign_up_title")),
                      const SignUpEmailFormInput(),
                      const SignUpPasswordFormInput(),
                      const SignUpErrorMessage(),
                      const SignUpButton(),
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

class SignUpEmailFormInput extends StatelessWidget {
  const SignUpEmailFormInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return EmailFormInput(
      onChanged: (value) => context.read<SignUpBloc>().add(GenericRegistrationEvent.emailChanged(value)),
    );
  }
}

class SignUpPasswordFormInput extends StatelessWidget {
  const SignUpPasswordFormInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PasswordFormInput(
      onChanged: (value) => context.read<SignUpBloc>().add(GenericRegistrationEvent.passwordChanged(value)),
    );
  }
}

class SignUpAppbar extends StatelessWidget implements PreferredSizeWidget {
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

class SignUpErrorMessage extends StatelessWidget {
  const SignUpErrorMessage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpBloc, GenericRegistrationState>(
      builder: (context, state) {
        return ErrorMessage(state: state);
      },
    );
  }
}

class SignUpButton extends StatelessWidget {
  const SignUpButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: AuthButton(
        label: tr("sign_up_page.sign_up_button"),
        onPressed: () => context.read<SignUpBloc>().add(
              GenericRegistrationEvent.validate(
                onValidateSuccess: (email, password) => context
                    .read<AuthBloc>()
                    .add(AuthEvent.registerWithEmailAndPassword(email: email, password: password)),
              ),
            ),
      ),
    );
  }
}
