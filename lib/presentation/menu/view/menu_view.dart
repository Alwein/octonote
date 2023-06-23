import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:octonote/application/constants/colors.dart';
import 'package:octonote/application/constants/layout_values.dart';
import 'package:octonote/domain/models/note_page/note_page.dart';
import 'package:octonote/domain/models/octo_user/octo_user.dart';
import 'package:octonote/presentation/app/bloc/app_bloc.dart';
import 'package:octonote/presentation/bootstrapping/bootstrapping.dart';
import 'package:octonote/presentation/menu/bloc/menu_bloc.dart';
import 'package:octonote/presentation/widgets/error_widgets/fetch_error.dart';
import 'package:octonote/presentation/widgets/loading.dart';
import 'package:octonote/presentation/widgets/menu_app_bar.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final backGroundColor = Theme.of(context).scaffoldBackgroundColor;
    return BlocBuilder<MenuBloc, MenuState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: backGroundColor,
          appBar: const MenuAppBar(),
          body: Column(
            children: [
              Expanded(
                child: state.status.map(
                  initial: (state) => Container(),
                  fetchInProgress: (state) => const Center(child: Loading()),
                  success: (state) => const NotePageListView(),
                  error: (state) => ErrorDisclaimer(
                    onRetry: () => context.read<MenuBloc>().add(const MenuEvent.fetchStarted()),
                  ),
                ),
              ),
              const Divider(),
              const UserTile(),
              const SizedBox(
                height: 5,
              )
            ],
          ),
        );
      },
    );
  }
}

class NotePageListView extends StatelessWidget {
  const NotePageListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MenuBloc, MenuState>(
      builder: (context, state) {
        return Column(
          children: [
            const MenuDivider(),
            const CreateNotePage(),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: state.notePages.length,
                itemBuilder: (context, index) {
                  final NotePage currentNotePage = state.notePages[index];
                  return NotePageTile(
                    notePage: currentNotePage,
                    isSelected: currentNotePage == state.notePageSelected,
                    onSelected: (notePage) {
                      context.read<MenuBloc>().add(MenuEvent.notePageSelected(notePage: notePage));
                    },
                  );
                },
              ),
            ),
          ],
        );
      },
    );
  }
}

class NotePageTile extends StatelessWidget {
  const NotePageTile({Key? key, required this.notePage, this.onSelected, this.isSelected = false}) : super(key: key);
  final NotePage notePage;
  final void Function(NotePage notePage)? onSelected;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onSelected!(notePage),
      child: Container(
        color: isSelected ? Colors.grey.withOpacity(0.1) : null,
        padding: const EdgeInsets.symmetric(
          horizontal: LayoutValues.horizontalPadding,
          vertical: 5,
        ),
        child: Row(
          children: [
            const Icon(Icons.keyboard_arrow_right_rounded),
            const SizedBox(
              width: 5,
            ),
            Expanded(
              child: Text(
                notePage.title != '' ? notePage.title : tr("note_page.untitled"),
                maxLines: 1,
                style: Theme.of(context).textTheme.titleMedium,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MenuDivider extends StatelessWidget {
  const MenuDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Divider(
      height: 0,
      color: OctonoteColors.darkColor.withAlpha(40),
    );
  }
}

class CreateNotePage extends StatelessWidget {
  const CreateNotePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.read<MenuBloc>().add(const MenuEvent.createEmptyNotePage()),
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: LayoutValues.horizontalPadding,
          vertical: 5,
        ),
        child: Row(
          children: [
            const Icon(Icons.add_rounded),
            const SizedBox(
              width: 5,
            ),
            Text(tr("menu.add_page"), style: Theme.of(context).textTheme.titleLarge),
          ],
        ),
      ),
    );
  }
}

class UserTile extends StatelessWidget {
  const UserTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final OctoUser user = context.read<UserManagerBloc>().currentUser;
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        children: [
          CircleAvatar(
            foregroundImage: user.photoURL != null ? NetworkImage(user.photoURL!) : null,
            child: user.photoURL != null ? Container() : Text(user.userName?[0] ?? "?"),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Text(
              user.userName ?? "Anonym",
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          const SettingsMenu(),
        ],
      ),
    );
  }
}

class SettingsMenu extends StatelessWidget {
  const SettingsMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        dividerTheme: const DividerThemeData(
          color: OctonoteColors.secondaryColor,
          thickness: 1,
        ),
      ),
      child: PopupMenuButton<MenuAction>(
        tooltip: "",
        color: OctonoteColors.primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        child: const Padding(
          padding: EdgeInsets.all(8),
          child: Icon(Icons.settings_outlined),
        ),
        onSelected: (profileLayoutStatus) {
          switch (profileLayoutStatus) {
            case MenuAction.logout:
              context.read<AppBloc>().add(const AppEvent.appLogoutRequested());
              break;
            case MenuAction.deleteAccount:
              context.read<AppBloc>().add(const AppEvent.appDeleteAccount());
              break;
          }
        },
        itemBuilder: (BuildContext context) => [
          PopupMenuItem(
            value: MenuAction.logout,
            child: filterSelection(
              context,
              label: tr("menu.logout"),
              icon: Icons.login_rounded,
            ),
          ),
          const PopupMenuDivider(
            height: 1,
          ),
          PopupMenuItem(
            value: MenuAction.deleteAccount,
            child: filterSelection(
              context,
              label: tr("menu.delete_account"),
              icon: Icons.person_off_outlined,
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }

  Widget filterSelection(
    BuildContext context, {
    required String label,
    required IconData icon,
    Color? color,
  }) {
    final contentColor = color ?? OctonoteColors.darkColor;
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, color: contentColor),
        const SizedBox(width: 10),
        Text(
          label,
          style: Theme.of(context).textTheme.titleMedium?.copyWith(color: contentColor),
        ),
      ],
    );
  }
}

enum MenuAction { logout, deleteAccount }
