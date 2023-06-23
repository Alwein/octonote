import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:octonote/application/constants/colors.dart';
import 'package:octonote/application/constants/layout_values.dart';
import 'package:octonote/presentation/auth/widgets/auth_widgets.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: OctonoteColors.primaryColor,
      child: const Stack(
        fit: StackFit.expand,
        children: [
          BackgroundHover(),
          CoverBody(),
        ],
      ),
    );
  }
}

class WelcomeMessage extends StatelessWidget {
  const WelcomeMessage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AuthTitle(
      title: "${tr("welcome_page_message")}\nOctonote",
    );
  }
}

class OctonoteLogoOutlined extends StatelessWidget {
  const OctonoteLogoOutlined({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 75,
      child: SvgPicture.asset(
        'assets/svg/octonote_outlined.svg',
        color: OctonoteColors.darkColor,
        semanticsLabel: 'Octonote logo',
      ),
    );
  }
}

class CoverIllustration extends StatelessWidget {
  const CoverIllustration({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: SvgPicture.asset(
          'assets/svg/octonote_illustration.svg',
          semanticsLabel: 'Octonote illustration',
        ),
      ),
    );
  }
}

class CoverBody extends StatelessWidget {
  const CoverBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: LayoutValues.horizontalPadding,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OctonoteLogoOutlined(),
            SizedBox(
              width: 30,
            ),
            WelcomeMessage(),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Expanded(child: CoverIllustration()),
      ],
    );
  }
}

class BackgroundHover extends StatelessWidget {
  const BackgroundHover({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    return Positioned(
      left: (screenWidth * (1 / 1.6)) / 2 - screenWidth / 2,
      top: 120,
      child: Container(
        height: screenWidth,
        width: screenWidth,
        decoration: const BoxDecoration(
          color: OctonoteColors.secondaryColor,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
