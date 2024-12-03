import 'package:flutter/material.dart';

// Ana renkler
const Color primaryColor = Color(0xFF352555); // Koyu mor/bordo
const Color accentColor1 = Color(0xFF40B59F); // Canlı yeşil-mavi
const Color accentColor2 = Color(0xFF2DBB54); // Canlı yeşil
const Color backgroundColor = Color(0xFFF8F8F8); // Açık gri tonunda arka plan

final ThemeData lightTheme = ThemeData(
  primaryColor: primaryColor,
  scaffoldBackgroundColor: backgroundColor,
  appBarTheme: const AppBarTheme(
    backgroundColor: primaryColor,
    titleTextStyle: TextStyle(
      color: Colors.white,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
    iconTheme: IconThemeData(color: Colors.white),
  ),
  textTheme: const TextTheme(
    headlineLarge: TextStyle(
        color: Colors.black87, fontSize: 32, fontWeight: FontWeight.bold),
    headlineMedium: TextStyle(color: Colors.black87, fontSize: 28),
    headlineSmall: TextStyle(color: Colors.black87, fontSize: 24),
    bodyLarge: TextStyle(color: Colors.black87, fontSize: 16),
    bodyMedium: TextStyle(color: Colors.black54, fontSize: 14),
    bodySmall: TextStyle(color: Colors.black54, fontSize: 12),
  ),
  buttonTheme: const ButtonThemeData(
    buttonColor: accentColor2,
    textTheme: ButtonTextTheme.primary,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: accentColor1,
      foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    ),
  ),
  floatingActionButtonTheme:
      const FloatingActionButtonThemeData(backgroundColor: accentColor1),
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: Colors.white,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(color: accentColor1),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(color: primaryColor, width: 2),
    ),
    hintStyle: const TextStyle(color: Colors.black45),
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: backgroundColor,
    elevation: 0,
  ),
);
