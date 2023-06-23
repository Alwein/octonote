import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:octonote/presentation/notepad/bloc/notepad_bloc.dart';
import 'package:octonote/presentation/octo_editor/view/octo_editor_view.dart';
import 'package:octonote/presentation/widgets/error_widgets/fetch_error.dart';
import 'package:octonote/presentation/widgets/loading.dart';
import 'package:octonote/presentation/widgets/notepad_app_bar.dart';

class Notepad extends StatelessWidget {
  const Notepad({Key? key, this.drawer}) : super(key: key);
  final Widget? drawer;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotePadBloc, NotePadState>(
      builder: (context, state) {
        return Scaffold(
          drawer: drawer,
          backgroundColor: Theme.of(context).colorScheme.background,
          appBar: const NotepadAppBar(),
          body: state.status.map(
            initial: (_) => Container(),
            fetchInProgress: (_) => const Center(child: Loading()),
            success: (_) => OctoEditor(
              key: ValueKey(state.notePage.id),
            ),
            error: (_) => ErrorDisclaimer(
              onRetry: () => context.read<NotePadBloc>().add(NotePadEvent.fetchStarted(notePage: state.notePage)),
            ),
          ),
        );
      },
    );
  }
}
