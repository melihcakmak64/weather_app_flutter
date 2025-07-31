import 'package:flutter/material.dart';

final ThemeData appTheme = ThemeData(
  fontFamily: 'Poppins',
  textTheme: const TextTheme(
    displayLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
    displayMedium: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
    headlineLarge: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
    headlineMedium: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
    titleLarge: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
    titleMedium: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
    bodyLarge: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
    bodyMedium: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
    labelLarge: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
    labelMedium: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
  ),
);

class AppTextStyles {
  static const String _font = 'Poppins';
  static const Color _color = Colors.white;

  static const TextStyle medium25 = TextStyle(
    fontSize: 25,
    fontWeight: FontWeight.w500,
    fontFamily: _font,
    color: _color,
  );

  static const TextStyle medium100 = TextStyle(
    fontSize: 100,
    fontWeight: FontWeight.w500,
    fontFamily: _font,
    color: _color,
  );

  static const TextStyle semibold20 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    fontFamily: _font,
    color: _color,
  );

  static const TextStyle medium15 = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w500,
    fontFamily: _font,
    color: _color,
  );

  static const TextStyle regular15 = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w400,
    fontFamily: _font,
    color: _color,
  );

  static const TextStyle semibold15 = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w600,
    fontFamily: _font,
    color: _color,
  );
}
