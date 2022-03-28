import 'package:flutter/material.dart';
import 'package:octonote/application/constants/colors.dart';
import 'package:octonote/presentation/home_page/home_page.dart';

class OctonoteApp extends StatelessWidget {
  const OctonoteApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Octonote 🐙',
      theme: appThemeLight,
      home: const HomePage(),
    );
  }
}

final ThemeData appThemeLight = ThemeData(
  textTheme: const TextTheme(
    headline1: TextStyle(
      color: OctonoteColors.textColor,
      fontSize: 44,
      fontFamily: "Inter",
      fontWeight: FontWeight.w700,
    ),
    headline2: TextStyle(
      color: OctonoteColors.textColor,
      fontSize: 32,
      fontFamily: "Inter",
      fontWeight: FontWeight.w600,
      letterSpacing: 0.16,
    ),
    headline3: TextStyle(
      color: OctonoteColors.textColor,
      fontSize: 24,
      fontFamily: "Inter",
      fontWeight: FontWeight.w600,
      letterSpacing: 0.12,
    ),
    headline4: TextStyle(
      color: OctonoteColors.textColor,
      fontSize: 20,
      fontFamily: "Inter",
      fontWeight: FontWeight.w600,
      letterSpacing: 0.10,
    ),
    headline5: TextStyle(
      color: OctonoteColors.textColor,
      fontSize: 14,
      fontFamily: "Inter",
      fontWeight: FontWeight.w600,
      letterSpacing: 0.07,
    ),
    headline6: TextStyle(
      color: OctonoteColors.textColor,
      fontSize: 14,
      fontFamily: "Inter",
      fontWeight: FontWeight.w500,
      letterSpacing: 0.07,
    ),
    subtitle1: TextStyle(
      color: OctonoteColors.textColor,
      fontSize: 12,
      fontFamily: "Inter",
      fontWeight: FontWeight.w600,
      letterSpacing: 0.06,
    ),
    bodyText1: TextStyle(
      color: OctonoteColors.textColor,
      fontSize: 12,
      fontFamily: "Inter",
      fontWeight: FontWeight.w500,
      letterSpacing: 0.06,
    ),
    bodyText2: TextStyle(
      color: OctonoteColors.textColor,
      fontSize: 12,
      letterSpacing: 0.06,
    ),
    caption: TextStyle(
      color: OctonoteColors.textColor,
      fontSize: 11,
      letterSpacing: 0.06,
    ),
    button: TextStyle(
      color: OctonoteColors.textColor,
      fontSize: 11,
      fontFamily: "Inter",
      fontWeight: FontWeight.w500,
      letterSpacing: 0.06,
    ),
  ).apply(
    bodyColor: OctonoteColors.textColor,
    displayColor: OctonoteColors.textColor,
  ),
  scaffoldBackgroundColor: OctonoteColors.secondaryColor,
  backgroundColor: OctonoteColors.primaryColor,
);
