import 'package:weather_app/core/enums.dart';

class HourlyWeather {
  final DateTime time;
  final double temperature;
  final WeatherCondition condition; // e.g., "rain", "cloudy", "clear"

  HourlyWeather({
    required this.time,
    required this.temperature,
    required this.condition,
  });
}
