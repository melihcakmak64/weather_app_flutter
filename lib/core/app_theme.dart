import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

final ThemeData appTheme = ThemeData(
  fontFamily: 'Poppins',
  textTheme: TextTheme(
    displayLarge: TextStyle(fontSize: 32.sp, fontWeight: FontWeight.bold),
    displayMedium: TextStyle(fontSize: 28.sp, fontWeight: FontWeight.bold),
    headlineLarge: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.w600),
    headlineMedium: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w600),
    titleLarge: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w500),
    titleMedium: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500),
    bodyLarge: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.normal),
    bodyMedium: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.normal),
    labelLarge: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),
    labelMedium: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w400),
  ),
);

class AppTextStyles {
  static const String _font = 'Poppins';
  static const Color _color = Colors.white;

  static TextStyle medium25 = TextStyle(
    fontSize: 25.sp,
    fontWeight: FontWeight.w500,
    fontFamily: _font,
    color: _color,
  );

  static TextStyle medium100 = TextStyle(
    fontSize: 100.sp,
    fontWeight: FontWeight.w500,
    fontFamily: _font,
    color: _color,
  );

  static TextStyle semibold20 = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeight.w600,
    fontFamily: _font,
    color: _color,
  );

  static TextStyle medium15 = TextStyle(
    fontSize: 15.sp,
    fontWeight: FontWeight.w500,
    fontFamily: _font,
    color: _color,
  );

  static TextStyle regular15 = TextStyle(
    fontSize: 15.sp,
    fontWeight: FontWeight.w400,
    fontFamily: _font,
    color: _color,
  );

  static TextStyle semibold15 = TextStyle(
    fontSize: 15.sp,
    fontWeight: FontWeight.w600,
    fontFamily: _font,
    color: _color,
  );
}
