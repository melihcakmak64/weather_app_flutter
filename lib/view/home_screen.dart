import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app/controller/location_provider.dart';
import 'package:weather_app/controller/weather_provider.dart';
import 'package:weather_app/core/app_theme.dart';
import 'package:weather_app/view/widgets/hourly_forecast_widget.dart';
import 'package:weather_app/view/widgets/main_weather_card.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class WeatherHomePage extends ConsumerWidget {
  const WeatherHomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final weatherAsync = ref.watch(hourlyWeatherProvider);
    final locationAsync = ref.watch(locationProvider);

    return weatherAsync.when(
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (e, _) => Center(child: Text('Hata: $e')),
      data: (hourlyWeatherList) {
        final current = hourlyWeatherList.first;
        final condition = current.condition;

        return Scaffold(
          body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(condition.backgroundImage),
                fit: BoxFit.cover,
              ),
            ),
            child: SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 53.h, horizontal: 34.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    MainWeatherCard(
                      weather: condition,
                      temperature: current.temperature.toStringAsFixed(0),
                      description: condition.name,
                      location: locationAsync.when(
                        data: (pos) => pos.address,
                        loading: () => "Konum alınıyor...",
                        error: (_, __) => "Konum alınamadı",
                      ),
                      date: _formatDate(current.time),
                    ),

                    SizedBox(height: 35.h),
                    HourlyForecastWidget(
                      weatherList: hourlyWeatherList,
                      condition: condition,
                    ),
                    Spacer(),
                    _buildRandomTextSection(),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  String _formatDate(DateTime time) {
    return "${time.day} ${_monthName(time.month)} ${time.year}";
  }

  String _monthName(int month) {
    const months = [
      "Jan",
      "Feb",
      "Mar",
      "Apr",
      "May",
      "Jun",
      "Jul",
      "Aug",
      "Sep",
      "Oct",
      "Nov",
      "Dec",
    ];
    return months[month - 1];
  }

  Widget _buildRandomTextSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Random Text', style: AppTextStyles.semibold20),
        SizedBox(height: 10.h),
        Text(
          'Improve him believe opinion offered met and end cheered forbade. Friendly as stronger speedily by recurred. Son interest wandered sir addition end say. Manners beloved affixed picture men ask.',
          style: AppTextStyles.semibold15.copyWith(
            color: Colors.white.withOpacity(0.75),
          ),
        ),
      ],
    );
  }
}
