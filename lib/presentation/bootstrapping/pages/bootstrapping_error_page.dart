import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:octonote/application/constants/colors.dart';
import 'package:octonote/presentation/app/bloc/app_bloc.dart';
import 'package:octonote/presentation/bootstrapping/bootstrapping.dart';
import 'package:octonote/presentation/widgets/custom_pages/custom_pages.dart';

class BootstrappingErrorPage extends StatelessWidget {
  const BootstrappingErrorPage({Key? key}) : super(key: key);

  static Page noTransitionPage({Key? key}) => SweetTransitionPage(
        key: const ValueKey('error_page'),
        child: BootstrappingErrorPage(key: key),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: Container(),
                ),
                const Icon(
                  Icons.error_outline,
                  color: OctonoteColors.darkColor,
                ),
                const SizedBox(
                  width: 20,
                ),
                Flexible(
                  flex: 10,
                  child: Container(
                    constraints: const BoxConstraints(
                      maxWidth: 400,
                    ),
                    child: Text(
                      tr("error_page.data_recuperation_error"),
                      maxLines: 3,
                      style: Theme.of(context).textTheme.headline5,
                    ),
                  ),
                ),
                Flexible(
                  child: Container(),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            RetryButton(
              label: tr('error_page.retry'),
              onPressed: () =>
                  context.read<UserManagerBloc>().add(const UserManagerEvent.fetchStarted()),
            ),
            const SizedBox(
              height: 10,
            ),
            RetryButton(
              label: tr('error_page.logout'),
              onPressed: () => context.read<AppBloc>().add(const AppEvent.appLogoutRequested()),
            ),
          ],
        ),
      ),
    );
  }
}

class RetryButton extends StatelessWidget {
  const RetryButton({Key? key, required this.label, required this.onPressed}) : super(key: key);

  final String label;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(360),
          border: Border.all(color: Theme.of(context).textTheme.subtitle1!.color!),
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 5,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.refresh_rounded,
              size: 18,
              color: Theme.of(context).textTheme.bodyText1!.color,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              label,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
