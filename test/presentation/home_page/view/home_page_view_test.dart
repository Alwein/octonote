import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:octonote/domain/models/note_page/note_page.dart';
import 'package:octonote/locator.dart' as sl;
import 'package:octonote/presentation/home_page/view/home_page_view.dart';
import 'package:octonote/presentation/menu/bloc/menu_bloc.dart';
import 'package:octonote/presentation/menu/view/menu_view.dart';
import 'package:octonote/presentation/notepad/bloc/notepad_bloc.dart';
import 'package:octonote/presentation/notepad/notepad_view.dart';

import '../../../test_helpers/test_helpers.dart';

class MockMenuBloc extends MockBloc<MenuEvent, MenuState> implements MenuBloc {}

class MockNotePadBloc extends MockBloc<NotePadEvent, NotePadState> implements NotePadBloc {}

void main() {
  late MenuBloc menuBloc;
  late NotePadBloc notePadBloc;

  const exampleNotePage = NotePage(id: "id", index: 0, title: "title");

  setUp(() async {
    menuBloc = MockMenuBloc();
    notePadBloc = MockNotePadBloc();

    await initServices();

    sl.getIt.registerFactory<MenuBloc>(() => menuBloc);
    sl.getIt.registerFactory<NotePadBloc>(() => notePadBloc);

    when(() => menuBloc.state).thenReturn(
      const MenuState(notePageSelected: exampleNotePage),
    );
    when(() => notePadBloc.state).thenReturn(
      const NotePadState(notePage: exampleNotePage),
    );
  });

  Widget makeTestatableWidget() {
    return const MyTestApp(
      page: HomePage(),
    );
  }

  group('Home Page View', () {
    testWidgets('should dispaly a Menu', (tester) async {
      await tester.runAsync(() async {
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
  });
}
