import 'package:flutter/material.dart';

class AppTheme {
  static const Color lightPrimary = Color(0xFFB7935F);
  static const Color darkPrimary = Color(0xFF141A2E);
  static const Color white = Color(0xFFF8F8F8);
  static const Color black = Color(0xFF242424);
  static const Color gold = Color(0xFFFACC1D);

  static ThemeData lightTheme = ThemeData(
    primaryColor: lightPrimary,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: lightPrimary,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: black,
      unselectedItemColor: white,
    ),
    appBarTheme: AppBarTheme(
      foregroundColor: gold,
      backgroundColor: Colors.transparent,
      centerTitle: true,
      titleTextStyle: TextStyle(
        fontSize: 30.0,
        fontWeight: FontWeight.bold,
        color: black,
      )
    ),
    scaffoldBackgroundColor: Colors.transparent,
    textTheme: TextTheme(
      headlineSmall: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w500,
        color: black,
      ),
      titleLarge: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w400,
        color: black,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: lightPrimary,    
      )
    ),
    iconButtonTheme: IconButtonThemeData(
      style: ButtonStyle(
        iconColor: MaterialStateProperty.all(lightPrimary),
        iconSize: MaterialStateProperty.all(35.0),
      )
    ),

  );

  static ThemeData darkTheme = ThemeData(
    primaryColor: darkPrimary,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: darkPrimary,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: gold,
      unselectedItemColor: white,
    ),
    appBarTheme: AppBarTheme(
      foregroundColor:white,
      backgroundColor: Colors.transparent,
      centerTitle: true,
      titleTextStyle: TextStyle(
        fontSize: 30.0,
        fontWeight: FontWeight.bold,
        color: black,
      )
    ),
    scaffoldBackgroundColor: Colors.transparent,
    textTheme: TextTheme(
      headlineSmall: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w500,
        color: white,
      ),
      titleLarge: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w400,
        color: gold,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: darkPrimary,    
      )
    ),
    iconButtonTheme: IconButtonThemeData(
      style: ButtonStyle(
        iconColor: MaterialStateProperty.all(darkPrimary),
        iconSize: MaterialStateProperty.all(35.0),
      )
    ),
  );
}
