import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app/core/enums.dart';
import 'package:weather_app/model/hourly_weather_model.dart';
import 'package:weather_app/view/widgets/hourly_item_widget.dart';

class HourlyForecastWidget extends StatelessWidget {
  final List<HourlyWeather> weatherList;
  final WeatherCondition condition;
  const HourlyForecastWidget({
    super.key,
    required this.weatherList,
    required this.condition,
  });

  @override
  Widget build(BuildContext context) {
    final half1 = weatherList.sublist(0, 5);
    final half2 = weatherList.sublist(5, 10);

    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          padding: EdgeInsets.all(30.w),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                condition.containerColor.withOpacity(0.7),
                condition.containerColor.withOpacity(0.3),
              ],
            ),
            borderRadius: BorderRadius.circular(25.r),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: half1
                    .map((hourly) => HourlItemWidget(hourlyWeather: hourly))
                    .toList(),
              ),
              SizedBox(height: 15.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: half2
                    .map((hourly) => HourlItemWidget(hourlyWeather: hourly))
                    .toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
