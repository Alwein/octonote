import 'package:bloc_test/bloc_test.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:octonote/domain/models/component/component.dart';
import 'package:octonote/domain/models/note_page/note_page.dart';
import 'package:octonote/presentation/menu/bloc/menu_bloc.dart';
import 'package:octonote/presentation/notepad/bloc/notepad_bloc.dart';
import 'package:octonote/presentation/notepad/notepad_view.dart';
import 'package:octonote/presentation/widgets/error_widgets/fetch_error.dart';
import 'package:octonote/presentation/widgets/loading.dart';
import 'package:octonote/presentation/widgets/notepad_app_bar.dart';

import '../../../test_helpers/test_helpers.dart';

class MockMenuBloc extends MockBloc<MenuEvent, MenuState> implements MenuBloc {}

class MockNotePadBloc extends MockBloc<NotePadEvent, NotePadState> implements NotePadBloc {}

void main() {
  late MenuBloc menuBloc;
  late NotePadBloc notePadBloc;

  const exampleNotePage = NotePage(id: "id", index: 0, title: "title");

  const componentContent = ComponentContent.text(text: "text");

  final exampleComponent = Component(
    id: "id",
    pageId: exampleNotePage.id,
    index: 0,
    content: componentContent,
  );

  final NotePadState initialNotePadState =
      NotePadState(notePage: exampleNotePage, components: [exampleComponent]);

  setUp(() async {
    menuBloc = MockMenuBloc();
    notePadBloc = MockNotePadBloc();

    await initServices();

    when(() => menuBloc.state).thenReturn(const MenuState(notePageSelected: exampleNotePage));
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
        child: const Notepad(),
      ),
    );
  }

  group('Notepad View', () {
    testWidgets('should dispaly a MenuAppBar', (tester) async {
      await tester.runAsync(() async {
        await mountLocalizedPage(
          tester,
          makeTestatableWidget(),
        );
      });
      await tester.pump();

      expect(find.byType(NotepadAppBar), findsOneWidget);
    });

    group('Notepad State', () {
      testWidgets('should dispaly a Container on initial state', (tester) async {
        when(() => notePadBloc.state)
            .thenReturn(initialNotePadState.copyWith(status: const NotePadStatus.initial()));

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
        when(() => notePadBloc.state).thenReturn(
          initialNotePadState.copyWith(status: const NotePadStatus.fetchInProgress()),
        );

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
        when(() => notePadBloc.state).thenReturn(
          initialNotePadState.copyWith(status: const NotePadStatus.success()),
        );

        await tester.runAsync(() async {
          await mountLocalizedPage(
            tester,
            makeTestatableWidget(),
          );
        });
        await tester.pump();
        expect(find.byType(ContentView), findsOneWidget);
      });

      testWidgets('should dispaly a ErrorDisclaimer on error state', (tester) async {
        when(() => notePadBloc.state).thenReturn(
          initialNotePadState.copyWith(status: const NotePadStatus.error()),
        );

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
      final exampleComponent0 = Component(
        id: "id0",
        pageId: exampleNotePage.id,
        index: 0,
        content: componentContent,
      );
      final exampleComponent1 = Component(
        id: "id1",
        pageId: exampleNotePage.id,
        index: 1,
        content: componentContent,
      );
      final exampleComponent2 = Component(
        id: "id2",
        pageId: exampleNotePage.id,
        index: 2,
        content: componentContent,
      );

      testWidgets('should dispaly multiple components', (tester) async {
        when(() => notePadBloc.state).thenReturn(
          initialNotePadState.copyWith(
            status: const NotePadStatus.success(),
            components: [
              exampleComponent0,
              exampleComponent1,
              exampleComponent2,
            ],
          ),
        );

        await tester.runAsync(() async {
          await mountLocalizedPage(
            tester,
            makeTestatableWidget(),
          );
        });
        await tester.pump();

        expect(find.byKey(ValueKey(exampleComponent0.id)), findsOneWidget);
        expect(find.byKey(ValueKey(exampleComponent1.id)), findsOneWidget);
        expect(find.byKey(ValueKey(exampleComponent2.id)), findsOneWidget);
      });

      testWidgets('should send a note page event when CreateNotePage is pressed', (tester) async {
        await tester.tap(find.text(tr("menu.add_page")));
        verify(() => menuBloc.add(const MenuEvent.createEmptyNotePage())).called(1);
      });
    });
  });
}
