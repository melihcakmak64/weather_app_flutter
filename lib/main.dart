import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app/core/app_theme.dart';
import 'package:weather_app/view/home_screen.dart';

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return ProviderScope(
          child: MaterialApp(
            title: 'Weather App',
            theme: appTheme,
            home: const WeatherHomePage(),
            debugShowCheckedModeBanner: false,
          ),
        );
      },
    );
  }
}
