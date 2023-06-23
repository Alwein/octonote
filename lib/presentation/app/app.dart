import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
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
  textTheme: TextTheme(
    displayLarge: GoogleFonts.poppins(
      color: OctonoteColors.darkColor,
      fontSize: 44,
      fontWeight: FontWeight.w700,
    ),
    displayMedium: GoogleFonts.poppins(
      color: OctonoteColors.darkColor,
      fontSize: 32,
      fontWeight: FontWeight.w600,
      letterSpacing: 0.16,
    ),
    displaySmall: GoogleFonts.poppins(
      color: OctonoteColors.darkColor,
      fontSize: 24,
      fontWeight: FontWeight.w600,
      letterSpacing: 0.12,
    ),
    headlineMedium: GoogleFonts.poppins(
      color: OctonoteColors.darkColor,
      fontSize: 20,
      fontWeight: FontWeight.w600,
      letterSpacing: 0.10,
    ),
    headlineSmall: GoogleFonts.poppins(
      color: OctonoteColors.darkColor,
      fontSize: 18,
      fontWeight: FontWeight.w600,
      letterSpacing: 0.07,
    ),
    titleLarge: GoogleFonts.poppins(
      color: OctonoteColors.darkColor,
      fontSize: 14,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.07,
    ),
    titleMedium: GoogleFonts.poppins(
      color: Colors.grey,
      fontWeight: FontWeight.w400,
      fontSize: 14,
      letterSpacing: 0.06,
    ),
    titleSmall: GoogleFonts.poppins(
      color: Colors.grey,
      fontWeight: FontWeight.w400,
      fontSize: 12,
      letterSpacing: 0.06,
    ),
    bodyLarge: GoogleFonts.poppins(
      color: OctonoteColors.darkColor,
      fontSize: 14,
      letterSpacing: 0.06,
    ),
    bodyMedium: GoogleFonts.poppins(
      color: OctonoteColors.darkColor,
      fontSize: 12,
      letterSpacing: 0.06,
    ),
    bodySmall: GoogleFonts.poppins(
      color: OctonoteColors.darkColor,
      fontSize: 12,
      letterSpacing: 0.06,
    ),
    labelLarge: GoogleFonts.poppins(
      color: OctonoteColors.darkColor,
      fontSize: 12,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.06,
    ),
  ).apply(
    bodyColor: OctonoteColors.darkColor,
    displayColor: OctonoteColors.darkColor,
  ),
  scaffoldBackgroundColor: OctonoteColors.secondaryColor,
  colorScheme: ColorScheme.fromSwatch().copyWith(
    primary: OctonoteColors.primaryColor,
    secondary: OctonoteColors.secondaryColor,
    background: OctonoteColors.primaryColor,
  ),
);
