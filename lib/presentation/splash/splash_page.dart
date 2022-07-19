import 'package:flutter/material.dart';
import 'package:octonote/presentation/widgets/custom_pages/custom_pages.dart';
import 'package:octonote/presentation/widgets/loading.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  static Page page({Key? key}) => MaterialPage(
        key: const ValueKey('SplashPage'),
        child: SplashPage(
          key: key,
        ),
      );
  static Page noTransitionPage({Key? key}) => SweetTransitionPage(
        child: SplashPage(
          key: key,
        ),
      );

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Loading(),
      ),
    );
  }
}
