import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:octonote/locator.dart' as sl;
import 'package:octonote/presentation/bootstrapping/bootstrapping.dart';
import 'package:octonote/presentation/widgets/octo_snackbar.dart';

class BootstrappingView extends StatelessWidget {
  const BootstrappingView({Key? key}) : super(key: key);

  static Page page() => const MaterialPage(child: BootstrappingView());

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: sl.getIt<UserManagerBloc>()..add(const UserManagerEvent.fetchStarted()),
      child: MultiBlocListener(
        listeners: [
          BlocListener<UserManagerBloc, UserManagerState>(
            listener: (context, state) {
              state.status.maybeMap(
                fetchError: (error) =>
                    showSnackbar(context, tr('user_data_error.data_recuperation_error')),
                orElse: () {},
              );
            },
          ),
          BlocListener<UserManagerBloc, UserManagerState>(
            listenWhen: (previous, current) =>
                (previous.message != current.message) && (current.message != null),
            listener: (context, state) {
              if (state.message != null) {
                showSnackbar(context, state.message!);
              }
            },
          ),
        ],
        child: Router(
          routerDelegate: BootstrappingRouterDelegate(),
        ),
      ),
    );
  }
}
