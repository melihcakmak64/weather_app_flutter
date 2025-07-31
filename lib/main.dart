import 'package:flutter/material.dart';
import 'package:weather_app/core/app_theme.dart';
import 'package:weather_app/view/home_screen.dart';

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather App',
      theme: appTheme,
      home: const WeatherHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
