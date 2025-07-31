import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:weather_app/core/enums.dart';
import 'package:weather_app/model/hourly_weather_model.dart';

class WeatherService {
  Future<List<HourlyWeather>> fetchHourlyWeather(double lat, double lon) async {
    final now = DateTime.now();
    final start = now.toIso8601String().split('.').first;
    final end = now.add(Duration(hours: 9)).toIso8601String().split('.').first;

    final url = Uri.parse(
      'https://api.open-meteo.com/v1/forecast?latitude=$lat&longitude=$lon'
      '&hourly=temperature_2m,weathercode&start_date=${start.substring(0, 10)}'
      '&end_date=${end.substring(0, 10)}&timezone=auto',
    );

    final res = await http.get(url);
    if (res.statusCode != 200) throw Exception("API error");

    final data = jsonDecode(res.body);
    final times = List<String>.from(data['hourly']['time']);
    final temps = List<double>.from(data['hourly']['temperature_2m']);
    final codes = List<int>.from(data['hourly']['weathercode']);

    final nowHour = now.hour;
    final currentIndex = times.indexWhere(
      (t) => DateTime.parse(t).hour == nowHour,
    );

    return List.generate(10, (i) {
      final time = DateTime.parse(times[currentIndex + i]);
      final temp = temps[currentIndex + i];
      final condition = _mapWeatherCodeToEnum(codes[currentIndex + i]);

      return HourlyWeather(time: time, temperature: temp, condition: condition);
    });
  }

  WeatherCondition _mapWeatherCodeToEnum(int code) {
    if (code == 0) return WeatherCondition.Sunny;
    if ([1, 2, 3].contains(code)) return WeatherCondition.Cloudy;
    if ([
      45,
      48,
      51,
      53,
      55,
      56,
      57,
      61,
      63,
      65,
      66,
      67,
      80,
      81,
      82,
    ].contains(code)) {
      return WeatherCondition.Rainy;
    }
    if ([71, 73, 75, 77, 85, 86].contains(code)) return WeatherCondition.Snowy;
    return WeatherCondition.Cloudy; // default
  }
}
