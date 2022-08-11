import 'package:bloc_test/bloc_test.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:octonote/domain/models/note_page/note_page.dart';
import 'package:octonote/domain/models/octo_user/octo_user.dart';
import 'package:octonote/locator.dart' as sl;
import 'package:octonote/presentation/bootstrapping/bootstrapping.dart';
import 'package:octonote/presentation/home_page/view/home_page_view.dart';
import 'package:octonote/presentation/menu/bloc/menu_bloc.dart';
import 'package:octonote/presentation/menu/view/menu_view.dart';
import 'package:octonote/presentation/notepad/bloc/notepad_bloc.dart';
import 'package:octonote/presentation/notepad/view/notepad_view.dart';

import '../../../test_helpers/test_helpers.dart';

class MockMenuBloc extends MockBloc<MenuEvent, MenuState> implements MenuBloc {}

class MockNotePadBloc extends MockBloc<NotePadEvent, NotePadState> implements NotePadBloc {}

class MockUserManagerBloc extends MockBloc<UserManagerEvent, UserManagerState>
    implements UserManagerBloc {}

void main() {
  late MenuBloc menuBloc;
  late NotePadBloc notePadBloc;
  late UserManagerBloc userManagerBloc;

  const exampleNotePage = NotePage(id: "id", index: 0, title: "title");

  setUp(() async {
    menuBloc = MockMenuBloc();
    notePadBloc = MockNotePadBloc();
    userManagerBloc = MockUserManagerBloc();

    await initServices();

    sl.getIt.registerFactory<MenuBloc>(() => menuBloc);
    sl.getIt.registerFactory<NotePadBloc>(() => notePadBloc);
    sl.getIt.registerFactory<UserManagerBloc>(() => userManagerBloc);

    when(() => menuBloc.state).thenReturn(
      const MenuState(notePageSelected: exampleNotePage),
    );
    when(() => notePadBloc.state).thenReturn(
      const NotePadState(notePage: exampleNotePage),
    );
    when(() => userManagerBloc.currentUser).thenReturn(
      const OctoUser.empty(),
    );
  });

  Widget makeTestatableWidget() {
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(
          value: userManagerBloc,
        ),
      ],
      child: const MyTestApp(
        page: HomePage(),
      ),
    );
  }

  group('Home Page View', () {
    testWidgets('should dispaly a Menu', (tester) async {
      await tester.runAsync(() async {
        const desktopWidth = 1920.0;
        const desktopHeight = 1080.0;
        await tester.setScreenSize(width: desktopWidth, height: desktopHeight);
        await mountLocalizedPage(
          tester,
          makeTestatableWidget(),
        );
      });
      await tester.pump();

      expect(find.byType(Menu), findsOneWidget);
    });

    testWidgets('should dispaly a Notepad', (tester) async {
      await tester.runAsync(() async {
        await mountLocalizedPage(
          tester,
          makeTestatableWidget(),
        );
      });
      await tester.pump();

      expect(find.byType(Notepad), findsOneWidget);
    });

    group('Responsive interface', () {
      testWidgets('should dispaly a MobileView on small screens', (tester) async {
        await tester.runAsync(() async {
          const phoneWidth = 299.0;
          const phoneHeight = 600.0;
          await tester.setScreenSize(width: phoneWidth, height: phoneHeight);
          await mountLocalizedPage(
            tester,
            makeTestatableWidget(),
          );
        });
        await tester.pump();

        expect(find.byType(MobileView), findsOneWidget);
      });
      testWidgets('should dispaly a DesktopView on big screens', (tester) async {
        await tester.runAsync(() async {
          const desktopWidth = 1920.0;
          const desktopHeight = 1080.0;
          await tester.setScreenSize(width: desktopWidth, height: desktopHeight);
          await mountLocalizedPage(
            tester,
            makeTestatableWidget(),
          );
        });
        await tester.pump();

        expect(find.byType(DesktopView), findsOneWidget);
      });
    });

    group('listeners', () {
      const previouslySelectedNotePage = NotePage(id: "id2", index: 1, title: "title2");
      const notePageSelected = NotePage(id: "id", index: 0, title: "title");
      const exampleNotePage = NotePage(id: "id", index: 0, title: "title");

      testWidgets('should send a note page event when CreateNotePage is pressed', (tester) async {
        whenListen(
          menuBloc,
          Stream.fromIterable([
            const MenuState(notePageSelected: exampleNotePage).copyWith(
              status: const MenuStatus.success(),
              notePageSelected: notePageSelected,
            ),
          ]),
        );
        when(() => menuBloc.state).thenReturn(
          const MenuState(notePageSelected: exampleNotePage).copyWith(
            status: const MenuStatus.success(),
            notePageSelected: previouslySelectedNotePage,
            notePages: [],
          ),
        );

        await tester.runAsync(() async {
          await mountLocalizedPage(
            tester,
            makeTestatableWidget(),
          );
        });

        expect(find.text(tr("menu.add_page")), findsOneWidget);

        await tester.tap(find.text(tr("menu.add_page")));
        verify(() => notePadBloc.add(const NotePadEvent.fetchStarted(notePage: notePageSelected)))
            .called(1);
      });
    });
  });
}
