import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather_app/model/hourly_weather_model.dart';
import 'package:weather_app/services/weather_service.dart';
import 'location_provider.dart';

final weatherServiceProvider = Provider((ref) => WeatherService());

final hourlyWeatherProvider = FutureProvider<List<HourlyWeather>>((ref) async {
  final position = await ref.watch(locationProvider.future);
  final service = ref.watch(weatherServiceProvider);
  return service.fetchHourlyWeather(position.latitude, position.longitude);
});
