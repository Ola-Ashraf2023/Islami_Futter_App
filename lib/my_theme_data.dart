import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemeData {
  static Color primary = const Color(0xffB7935F);
  static Color blackColor = const Color(0xff000000);
  static Color primaryDark = const Color(0xff141A2E);
  static Color darkSecondary = const Color(0xffFACC1D);

  //static Color primaryDark = const Color(0xffB7935f);
  static ThemeData LightTheme = ThemeData(
      colorScheme: ColorScheme(
        primary: primary,
        onPrimary: Colors.black45,
        secondary: blackColor,
        onSecondary: Colors.white,
        surface: Colors.deepPurpleAccent,
        onSurface: Colors.orangeAccent,
        brightness: Brightness.light,
        error: Colors.red,
        onError: Colors.redAccent,
        background: blackColor,
        onBackground: primary,
      ),
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      textTheme: TextTheme(
        bodyLarge: GoogleFonts.elMessiri(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Color(0xff242424),
        ),
        bodyMedium: GoogleFonts.elMessiri(
          fontSize: 25,
          fontWeight: FontWeight.w500,
          color: Color(0xff242424),
        ),
        bodySmall: GoogleFonts.elMessiri(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Color(0xff242424),
        ),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        type: BottomNavigationBarType.shifting,
        backgroundColor: primary,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
      ));
  static ThemeData DarkTheme = ThemeData(
      colorScheme: ColorScheme(
        primary: primaryDark,
        onPrimary: Colors.white,
        secondary: darkSecondary,
        onSecondary: Colors.white,
        surface: Colors.deepPurpleAccent,
        onSurface: Colors.orangeAccent,
        brightness: Brightness.dark,
        error: Colors.red,
        onError: Colors.redAccent,
        background: darkSecondary,
        onBackground: darkSecondary,
      ),
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: const AppBarTheme(
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      textTheme: TextTheme(
        bodyLarge: GoogleFonts.elMessiri(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        bodyMedium: GoogleFonts.elMessiri(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        bodySmall: GoogleFonts.elMessiri(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: darkSecondary,
        ),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        type: BottomNavigationBarType.shifting,
        backgroundColor: primaryDark,
        selectedItemColor: darkSecondary,
        unselectedItemColor: Colors.white,
      ));
}
