import 'package:flutter/material.dart';
import 'package:octonote/domain/models/component/component.dart';

class TextComponentView extends StatelessWidget {
  const TextComponentView({
    Key? key,
    required this.component,
    this.isSelected = false,
    this.focusNode,
    this.onChanged,
  }) : super(key: key);
  final TextComponent component;
  final bool isSelected;
  final FocusNode? focusNode;
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: null,
      focusNode: focusNode,
      initialValue: component.text,
      decoration: const InputDecoration(
        isDense: true,
        contentPadding: EdgeInsets.symmetric(vertical: 8),
        border: InputBorder.none,
      ),
      style: Theme.of(context).textTheme.bodyText1,
      keyboardType: TextInputType.text,
      onChanged: onChanged,
    );
  }
}

class NotePadSelectableArea extends StatelessWidget {
  const NotePadSelectableArea(
      {Key? key, this.onTap, this.readOnly = false, this.minLines, this.maxLines})
      : super(key: key);

  final void Function()? onTap;
  final bool readOnly;
  final int? minLines;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextFormField(
            minLines: minLines,
            maxLines: maxLines,
            readOnly: readOnly,
            onTap: onTap,
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
