import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:octonote/application/constants/colors.dart';
import 'package:octonote/locator.dart' as sl;
import 'package:octonote/presentation/app/bloc/app_bloc.dart';
import 'package:octonote/presentation/app/routes/app_routes.dart';

class OctonoteApp extends StatelessWidget {
  const OctonoteApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Octonote 🐙',
      theme: appThemeLight,
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      home: const AppView(),
    );
  }
}

class AppView extends StatelessWidget {
  const AppView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => sl.getIt<AppBloc>(),
        ),
      ],
      child: Router(
        routerDelegate: AppRouterDelegate(),
      ),
    );
  }
}

final ThemeData appThemeLight = ThemeData(
  textTheme: const TextTheme(
    headline1: TextStyle(
      color: OctonoteColors.darkColor,
      fontSize: 44,
      fontFamily: "Inter",
      fontWeight: FontWeight.w700,
    ),
    headline2: TextStyle(
      color: OctonoteColors.darkColor,
      fontSize: 32,
      fontFamily: "Inter",
      fontWeight: FontWeight.w600,
      letterSpacing: 0.16,
    ),
    headline3: TextStyle(
      color: OctonoteColors.darkColor,
      fontSize: 24,
      fontFamily: "Inter",
      fontWeight: FontWeight.w600,
      letterSpacing: 0.12,
    ),
    headline4: TextStyle(
      color: OctonoteColors.darkColor,
      fontSize: 20,
      fontFamily: "Inter",
      fontWeight: FontWeight.w600,
      letterSpacing: 0.10,
    ),
    headline5: TextStyle(
      color: OctonoteColors.darkColor,
      fontSize: 18,
      fontFamily: "Inter",
      fontWeight: FontWeight.w600,
      letterSpacing: 0.07,
    ),
    headline6: TextStyle(
      color: OctonoteColors.darkColor,
      fontSize: 14,
      fontFamily: "Inter",
      fontWeight: FontWeight.w500,
      letterSpacing: 0.07,
    ),
    subtitle1: TextStyle(
      color: Colors.grey,
      fontWeight: FontWeight.w400,
      fontSize: 14,
      fontFamily: "Inter",
      letterSpacing: 0.06,
    ),
    subtitle2: TextStyle(
      color: Colors.grey,
      fontWeight: FontWeight.w400,
      fontSize: 12,
      fontFamily: "Inter",
      letterSpacing: 0.06,
    ),
    bodyText1: TextStyle(
      color: OctonoteColors.darkColor,
      fontSize: 14,
      fontFamily: "Inter",
      letterSpacing: 0.06,
    ),
    bodyText2: TextStyle(
      color: OctonoteColors.darkColor,
      fontSize: 12,
      fontFamily: "Inter",
      letterSpacing: 0.06,
    ),
    caption: TextStyle(
      color: OctonoteColors.darkColor,
      fontSize: 12,
      letterSpacing: 0.06,
    ),
    button: TextStyle(
      color: OctonoteColors.darkColor,
      fontSize: 12,
      fontFamily: "Inter",
      fontWeight: FontWeight.w500,
      letterSpacing: 0.06,
    ),
  ).apply(
    bodyColor: OctonoteColors.darkColor,
    displayColor: OctonoteColors.darkColor,
  ),
  scaffoldBackgroundColor: OctonoteColors.secondaryColor,
  backgroundColor: OctonoteColors.primaryColor,
);
