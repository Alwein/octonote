import 'package:flutter/material.dart';
import 'package:octonote/application/constants/layout_values.dart';
import 'package:octonote/presentation/widgets/notepad_app_bar.dart';

class Notepad extends StatelessWidget {
  const Notepad({Key? key, this.drawer}) : super(key: key);
  final Widget? drawer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: drawer,
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: NotepadAppBar(),
      body: ListView.builder(
        itemCount: 4,
        itemBuilder: (context, index) {
          return const NotePadField();
        },
      ),
    );
  }
}

class NotePadField extends StatelessWidget {
  const NotePadField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: LayoutValues.horizontalPadding),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              decoration: const InputDecoration(
                isDense: true,
                contentPadding: EdgeInsets.symmetric(vertical: 8),
                border: InputBorder.none,
              ),
              style: Theme.of(context).textTheme.bodyText1,
              keyboardType: TextInputType.text,
            ),
          ),
        ],
      ),
    );
  }
}
