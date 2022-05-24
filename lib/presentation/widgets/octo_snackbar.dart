import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

void showSnackbar(BuildContext context, String content) {
  ScaffoldMessenger.of(context)
      .showSnackBar(CustomSnackBar.defaultSnackbar(context, content: content));
}

class CustomSnackBar {
  static SnackBar defaultSnackbar(BuildContext context, {required String content}) {
    return SnackBar(
      width: 400,
      backgroundColor: Colors.grey[800],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
      behavior: SnackBarBehavior.floating,
      content: AutoSizeText(
        content,
        maxLines: 3,
        style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.white),
        textAlign: TextAlign.center,
      ),
    );
  }
}
