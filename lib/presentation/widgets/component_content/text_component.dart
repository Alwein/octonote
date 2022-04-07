import 'package:flutter/material.dart';
import 'package:octonote/domain/models/component/component.dart';

class TextComponentView extends StatelessWidget {
  const TextComponentView({Key? key, required this.component}) : super(key: key);
  final TextComponent component;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: component.text,
      decoration: const InputDecoration(
        isDense: true,
        contentPadding: EdgeInsets.symmetric(vertical: 8),
        border: InputBorder.none,
      ),
      style: Theme.of(context).textTheme.bodyText1,
      keyboardType: TextInputType.text,
    );
  }
}

class NotePadField extends StatelessWidget {
  const NotePadField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextFormField(
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
    );
  }
}
