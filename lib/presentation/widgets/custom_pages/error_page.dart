import 'package:flutter/material.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({Key? key}) : super(key: key);

  static Page page() {
    return const MaterialPage(child: ErrorPage());
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "An error has occurred, restart the application",
          style: TextStyle(color: Colors.red),
        ),
      ),
    );
  }
}
