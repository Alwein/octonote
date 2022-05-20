import 'package:flutter/material.dart';
import 'package:octonote/application/constants/colors.dart';

class Loading extends StatelessWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 50,
      height: 50,
      child: CircularProgressIndicator(
        strokeWidth: 2,
        color: OctonoteColors.darkColor,
      ),
    );
  }
}
