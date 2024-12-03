import 'package:flutter/material.dart';

const Color primaryColor = Color(0xFF5d30be);
const Color secondaryColor = Color(0xFF304fbe);

// Accent Colors
const Color accentColor1 = Color(0xFF30bfb7);
const Color accentColor2 = Color(0xFF30bf82);
const Color accentColor3 = Color(0xFF8b8688);

// Background and Text Colors
const Color backgroundColor = Color(0xFFF8F8F8);
const Color textColor = Color(0xFF000000);
const Color lightTextColor = Color(0xFF8A8A8A);

final ThemeData lightTheme = ThemeData(
  primaryColor: primaryColor,
  scaffoldBackgroundColor: backgroundColor,
  appBarTheme: const AppBarTheme(
    backgroundColor: backgroundColor,
    elevation: 0,
    titleTextStyle:
        TextStyle(fontWeight: FontWeight.w200, color: textColor, fontSize: 24),
    iconTheme: IconThemeData(color: Colors.white),
  ),
  textTheme: const TextTheme(
    headlineLarge: TextStyle(
      color: textColor,
      fontSize: 32,
      fontWeight: FontWeight.bold,
    ),
    headlineMedium: TextStyle(
      color: textColor,
      fontSize: 28,
    ),
    headlineSmall: TextStyle(
      color: textColor,
      fontSize: 24,
    ),
    bodyLarge: TextStyle(
      color: textColor,
      fontSize: 16,
    ),
    bodyMedium: TextStyle(
      color: lightTextColor,
      fontSize: 14,
    ),
    bodySmall: TextStyle(
      color: lightTextColor,
      fontSize: 12,
    ),
  ),
  buttonTheme: ButtonThemeData(
    buttonColor: accentColor2,
    textTheme: ButtonTextTheme.primary,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: accentColor1,
      foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    ),
  ),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: accentColor1,
    foregroundColor: Colors.white,
  ),
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: Colors.white,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: accentColor1),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: primaryColor, width: 2),
    ),
    hintStyle: const TextStyle(color: lightTextColor),
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: backgroundColor,
    selectedItemColor: primaryColor,
    unselectedItemColor: lightTextColor,
    elevation: 0,
    type: BottomNavigationBarType.fixed,
  ),
);
