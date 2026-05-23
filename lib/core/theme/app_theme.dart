import 'package:flutter/material.dart';

// design system global du portfolio
class AppTheme {
  static const Color primary = Color(0xFF0F172A);
  static const Color accent = Color(0xFF22C55E);
  static const Color background = Colors.white;

  static ThemeData light = ThemeData(
    scaffoldBackgroundColor: background,
    fontFamily: 'Inter',

    textTheme: const TextTheme(
      headlineLarge: TextStyle(
        fontSize: 48,
        fontWeight: FontWeight.bold,
        color: primary,
      ),
      bodyLarge: TextStyle(
        fontSize: 16,
        color: Colors.black87,
      ),
    ),
  );
}