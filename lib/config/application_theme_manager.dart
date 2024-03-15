import 'package:flutter/material.dart';

class ApplicationThemeManager {
  static const Color primaryColor = Color(0xffB7935F);
  static const Color primaryDarkColor = Color(0xffFACC1D);
  static ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      primaryColor: primaryColor,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: const AppBarTheme(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        titleTextStyle: TextStyle(
          fontFamily: "El Messiri",
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: primaryColor,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color(0xff707070),
        selectedLabelStyle: TextStyle(
          fontFamily: "El Messiri",
          fontSize: 17,
          fontWeight: FontWeight.bold,
          color: Color(0xff707070),
        ),
        selectedIconTheme: IconThemeData(
          color: Color(0xff707070),
        ),
        unselectedIconTheme: IconThemeData(
          color: Colors.white,
        ),
        unselectedLabelStyle: TextStyle(
          fontFamily: "El Messiri",
          fontSize: 15,
          fontWeight: FontWeight.normal,
          color: Colors.black,
        ),
        unselectedItemColor: Colors.white,
      ),
      textTheme: const TextTheme(
        titleLarge: TextStyle(
          fontFamily: "El Messiri",
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        bodyLarge: TextStyle(
          fontFamily: "El Messiri",
          fontSize: 25,
          fontWeight: FontWeight.w500,
          color: Colors.black,
        ),
        bodyMedium: TextStyle(
          fontFamily: "El Messiri",
          fontSize: 25,
          fontWeight: FontWeight.normal,
          color: Colors.black,
        ),
        bodySmall: TextStyle(
          fontFamily: "El Messiri",
          fontSize: 20,
          fontWeight: FontWeight.w500,
          color: Colors.black,
        ),
      ));

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    primaryColor: primaryDarkColor,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      elevation: 0,
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
      backgroundColor: Colors.transparent,
      titleTextStyle: TextStyle(
        fontFamily: "El Messiri",
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Color(0xff141A2E),
      type: BottomNavigationBarType.fixed,
      selectedItemColor: primaryDarkColor,
      selectedLabelStyle: TextStyle(
        fontFamily: "El Messiri",
        fontSize: 17,
        fontWeight: FontWeight.bold,
        color: primaryDarkColor,
      ),
      selectedIconTheme: IconThemeData(
        color: primaryDarkColor,
      ),
      unselectedIconTheme: IconThemeData(
        color: Colors.white,
      ),
      unselectedLabelStyle: TextStyle(
        fontFamily: "El Messiri",
        fontSize: 15,
        fontWeight: FontWeight.normal,
        color: Colors.white,
      ),
      unselectedItemColor: Colors.white,
    ),
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        fontFamily: "El Messiri",
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      bodyLarge: TextStyle(
        fontFamily: "El Messiri",
        fontSize: 25,
        fontWeight: FontWeight.w500,
        color: Colors.white,
      ),
      bodyMedium: TextStyle(
          fontFamily: "El Messiri",
          fontSize: 25,
          fontWeight: FontWeight.normal,
          color: Colors.white),
      bodySmall: TextStyle(
        fontFamily: "El Messiri",
        fontSize: 20,
        fontWeight: FontWeight.w500,
        color: Colors.white,
      ),
    ),
    dividerColor: primaryDarkColor,
  );
}
