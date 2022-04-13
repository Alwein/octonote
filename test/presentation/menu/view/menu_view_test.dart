import 'package:bloc_test/bloc_test.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:octonote/domain/models/note_page/note_page.dart';
import 'package:octonote/presentation/menu/bloc/menu_bloc.dart';
import 'package:octonote/presentation/menu/view/menu_view.dart';
import 'package:octonote/presentation/notepad/bloc/notepad_bloc.dart';
import 'package:octonote/presentation/widgets/error_widgets/fetch_error.dart';
import 'package:octonote/presentation/widgets/loading.dart';
import 'package:octonote/presentation/widgets/menu_app_bar.dart';

import '../../../test_helpers/test_helpers.dart';

class MockMenuBloc extends MockBloc<MenuEvent, MenuState> implements MenuBloc {}

class MockNotePadBloc extends MockBloc<NotePadEvent, NotePadState> implements NotePadBloc {}

void main() {
  late MenuBloc menuBloc;
  late NotePadBloc notePadBloc;

  const exampleNotePage = NotePage(id: "id", index: 0, title: "title");

  const MenuState initialMenuState = MenuState(notePageSelected: exampleNotePage);

  setUp(() async {
    menuBloc = MockMenuBloc();
    notePadBloc = MockNotePadBloc();

    await initServices();

    when(() => menuBloc.state).thenReturn(initialMenuState);
    when(() => notePadBloc.state).thenReturn(
      const NotePadState(notePage: exampleNotePage),
    );
  });

  Widget makeTestatableWidget() {
    return MyTestApp(
      page: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => menuBloc,
          ),
          BlocProvider(
            create: (context) => notePadBloc,
          ),
        ],
        child: const Menu(),
      ),
    );
  }

  group('Menu View', () {
    testWidgets('should dispaly a MenuAppBar', (tester) async {
      await tester.runAsync(() async {
        await mountLocalizedPage(
          tester,
          makeTestatableWidget(),
        );
      });
      await tester.pump();

      expect(find.byType(MenuAppBar), findsOneWidget);
    });

    group('Menu State', () {
      testWidgets('should dispaly a Container on initial state', (tester) async {
        when(() => menuBloc.state)
            .thenReturn(initialMenuState.copyWith(status: const MenuStatus.initial()));

        await tester.runAsync(() async {
          await mountLocalizedPage(
            tester,
            makeTestatableWidget(),
          );
        });
        await tester.pump();

        expect(find.byType(Container), findsOneWidget);
      });

      testWidgets('should dispaly a Loading on fetchInProgress state', (tester) async {
        when(() => menuBloc.state)
            .thenReturn(initialMenuState.copyWith(status: const MenuStatus.fetchInProgress()));

        await tester.runAsync(() async {
          await mountLocalizedPage(
            tester,
            makeTestatableWidget(),
          );
        });
        await tester.pump();

        expect(find.byType(Loading), findsOneWidget);
      });

      testWidgets('should dispaly a NotePageListView on success state', (tester) async {
        when(() => menuBloc.state)
            .thenReturn(initialMenuState.copyWith(status: const MenuStatus.success()));

        await tester.runAsync(() async {
          await mountLocalizedPage(
            tester,
            makeTestatableWidget(),
          );
        });
        await tester.pump();

        expect(find.byType(NotePageListView), findsOneWidget);
      });

      testWidgets('should dispaly a ErrorDisclaimer on error state', (tester) async {
        when(() => menuBloc.state)
            .thenReturn(initialMenuState.copyWith(status: const MenuStatus.error()));

        await tester.runAsync(() async {
          await mountLocalizedPage(
            tester,
            makeTestatableWidget(),
          );
        });
        await tester.pump();

        expect(find.byType(ErrorDisclaimer), findsOneWidget);
      });
    });

    group('on tap', () {
      const exampleNotePage1 = NotePage(id: "id1", index: 0, title: "title1");
      const exampleNotePage2 = NotePage(id: "id2", index: 1, title: "title2");
      const exampleNotePage3 = NotePage(id: "id3", index: 2, title: "title3");

      testWidgets('should dispaly multiple note pages and select one', (tester) async {
        when(() => menuBloc.state).thenReturn(
          initialMenuState.copyWith(
            status: const MenuStatus.success(),
            notePages: [
              exampleNotePage1,
              exampleNotePage2,
              exampleNotePage3,
            ],
          ),
        );

        await tester.runAsync(() async {
          await mountLocalizedPage(
            tester,
            makeTestatableWidget(),
          );
        });

        expect(find.text(exampleNotePage1.title), findsOneWidget);
        expect(find.text(exampleNotePage2.title), findsOneWidget);
        expect(find.text(exampleNotePage3.title), findsOneWidget);

        await tester.tap(find.text(exampleNotePage2.title));
        verify(() => menuBloc.add(const MenuEvent.notePageSelected(notePage: exampleNotePage2)))
            .called(1);
      });

      testWidgets('should send a note page event when CreateNotePage is pressed', (tester) async {
        when(() => menuBloc.state).thenReturn(
          initialMenuState.copyWith(
            status: const MenuStatus.success(),
            notePages: [],
          ),
        );

        await tester.runAsync(() async {
          await mountLocalizedPage(
            tester,
            makeTestatableWidget(),
          );
        });

        await tester.tap(find.text(tr("menu.add_page")));
        verify(() => menuBloc.add(const MenuEvent.createEmptyNotePage())).called(1);
      });
    });

    group('listeners', () {
      const previouslySelectedNotePage = NotePage(id: "id2", index: 1, title: "title2");
      const notePageSelected = NotePage(id: "id", index: 0, title: "title");

      testWidgets('should send a note page event when CreateNotePage is pressed', (tester) async {
        whenListen(
          menuBloc,
          Stream.fromIterable([
            initialMenuState.copyWith(
              status: const MenuStatus.success(),
              notePageSelected: notePageSelected,
            ),
          ]),
        );
        when(() => menuBloc.state).thenReturn(
          initialMenuState.copyWith(
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
