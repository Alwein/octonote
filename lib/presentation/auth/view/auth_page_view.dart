import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:octonote/application/constants/colors.dart';
import 'package:octonote/application/utils/breakpoints.dart';
import 'package:octonote/locator.dart' as sl;
import 'package:octonote/presentation/auth/bloc/auth_bloc.dart';
import 'package:octonote/presentation/auth/pages/welcome/welcome_view.dart';
import 'package:octonote/presentation/auth/router/auth_router.dart';
import 'package:octonote/presentation/widgets/octo_snackbar.dart';

class AuthPageView extends StatelessWidget {
  const AuthPageView({Key? key}) : super(key: key);

  static Page page() => const MaterialPage<void>(child: AuthPageView());

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl.getIt<AuthBloc>(),
      child: Scaffold(
        backgroundColor: OctonoteColors.primaryColor,
        body: SafeArea(
          child: AuthSnackbarManager(
            child: getSize(context).isGreatherThanMobile ? const DesktopAuthView() : const MobileAuthView(),
          ),
        ),
      ),
    );
  }
}

class MobileAuthView extends StatelessWidget {
  const MobileAuthView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Router(
      routerDelegate: AuthRouterDelegate(),
    );
  }
}

class DesktopAuthView extends StatelessWidget {
  const DesktopAuthView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Flexible(
          flex: 16,
          child: WelcomeView(),
        ),
        VerticalDivider(
          width: 1,
        ),
        Flexible(
          flex: 10,
          child: MobileAuthView(),
        ),
      ],
    );
  }
}

class AuthSnackbarManager extends StatelessWidget {
  const AuthSnackbarManager({Key? key, this.child}) : super(key: key);
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listenWhen: (previous, current) => previous.authStatus != current.authStatus,
      listener: (context, state) {
        state.authStatus.mapOrNull(
          error: (state) {
            state.authFailure.mapOrNull(
              cancelledByUser: (_) {},
              serverError: (_) => showSnackbar(context, tr('auth_error.serverError')),
              emailAlreadyInUse: (_) => showSnackbar(context, tr('auth_error.emailAlreadyInUse')),
              invalidEmail: (_) => showSnackbar(context, tr('auth_error.invalidEmail')),
              operationNotAllowed: (_) => showSnackbar(context, tr('auth_error.operationNotAllowed')),
              userDisabled: (_) => showSnackbar(context, tr('auth_error.userDisabled')),
              weakPassword: (_) => showSnackbar(context, tr('auth_error.weakPassword')),
              wrongIosVersion: (_) => showSnackbar(context, tr('auth_error.wrongIosVersion')),
              logoutFailure: (_) => showSnackbar(context, tr('auth_error.logoutFailure')),
              invalidPasswordAndEmailCombination: (_) => showSnackbar(
                context,
                tr('auth_error.invalidPasswordAndEmailCombination'),
              ),
              userMismatch: (_) => showSnackbar(context, tr('auth_error.userMismatch')),
              userNotFound: (_) => showSnackbar(context, tr('auth_error.userNotFound')),
              invalidCredential: (_) => showSnackbar(context, tr('auth_error.invalidCredential')),
              wrongPassword: (_) => showSnackbar(context, tr('auth_error.wrongPassword')),
              requireLogin: (_) => showSnackbar(context, tr('auth_error.requireLogin')),
              credentialAlreadyInUse: (_) => showSnackbar(context, tr('auth_error.credentialAlreadyInUse')),
              providerAlreadyLinked: (_) => showSnackbar(context, tr('auth_error.providerAlreadyLinked')),
            );
          },
        );
      },
      child: child,
    );
  }
}
