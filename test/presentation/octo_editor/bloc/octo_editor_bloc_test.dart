import 'package:bloc_test/bloc_test.dart';
import 'package:octonote/presentation/octo_editor/bloc/octo_editor_bloc.dart';
import 'package:super_editor/super_editor.dart';

void main() {
  final Document initialDocument = MutableDocument(
    nodes: [
      ParagraphNode(
        id: DocumentEditor.createNodeId(),
        text: AttributedText(
          text: 'Bienvenue sur Octonote 🐙',
        ),
        metadata: {
          'blockType': header1Attribution,
        },
      ),
    ],
  );
  void onSaveDocument() {}
  OctoEditorBloc _buildBloc() {
    return OctoEditorBloc(
      initialDocument: initialDocument,
      onSaveDocument: (doc) => onSaveDocument(),
    );
  }

  blocTest<OctoEditorBloc, OctoEditorState>(
    'should emit state with showEditorToolBar to true',
    build: () => _buildBloc(),
    act: (bloc) => bloc.add(const OctoEditorEvent.showEditorToolbar()),
    expect: () => const <OctoEditorState>[OctoEditorState(showEditorToolBar: true)],
  );

  blocTest<OctoEditorBloc, OctoEditorState>(
    'should emit state with showEditorToolBar to false',
    seed: () => const OctoEditorState(showEditorToolBar: true),
    build: () => _buildBloc(),
    act: (bloc) => bloc.add(const OctoEditorEvent.hideEditorToolbar()),
    expect: () => const <OctoEditorState>[OctoEditorState()],
  );

  blocTest<OctoEditorBloc, OctoEditorState>(
    'should emit state with showImageToolBar to true',
    build: () => _buildBloc(),
    act: (bloc) => bloc.add(const OctoEditorEvent.showImageToolbar()),
    expect: () => const <OctoEditorState>[OctoEditorState(showImageToolBar: true)],
  );

  blocTest<OctoEditorBloc, OctoEditorState>(
    'should emit state with showImageToolBar to false',
    seed: () => const OctoEditorState(showImageToolBar: true),
    build: () => _buildBloc(),
    act: (bloc) => bloc.add(const OctoEditorEvent.hideImageToolbar()),
    expect: () => const <OctoEditorState>[OctoEditorState()],
  );
}
