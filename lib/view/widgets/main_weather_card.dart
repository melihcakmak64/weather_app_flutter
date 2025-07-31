import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:weather_app/core/app_theme.dart';
import 'package:weather_app/core/enums.dart';

class MainWeatherCard extends StatelessWidget {
  final WeatherCondition weather;
  final String temperature;
  final String description;
  final String location;
  final String date;

  const MainWeatherCard({
    super.key,
    required this.weather,
    required this.temperature,
    required this.description,
    required this.location,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25.r),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 25.h),
          decoration: BoxDecoration(
            color: weather.containerColor,
            borderRadius: BorderRadius.circular(35),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Today',
                    style: AppTextStyles.medium25.copyWith(
                      color: weather.textColor,
                    ),
                  ),
                  SizedBox(width: 15.w),
                  Icon(
                    Icons.keyboard_arrow_down,
                    color: weather.textColor,
                    size: 20.w,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    weather.iconPath,
                    height: 72.h,
                    color: weather.textColor,
                  ),
                  SizedBox(width: 20.w),
                  Text(
                    '$temperature°',
                    style: AppTextStyles.medium100.copyWith(
                      color: weather.textColor,
                    ),
                  ),
                ],
              ),
              Text(
                description,
                style: AppTextStyles.semibold20.copyWith(
                  color: weather.textColor,
                ),
              ),
              SizedBox(height: 15.h),
              Text(
                location,
                style: AppTextStyles.medium15.copyWith(
                  color: weather.textColor,
                ),
              ),
              SizedBox(height: 15.h),

              Text(
                date,
                style: AppTextStyles.medium15.copyWith(
                  color: weather.textColor,
                ),
              ),
              SizedBox(height: 15.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Feels like $temperature°',
                    style: AppTextStyles.medium15.copyWith(
                      color: weather.textColor,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10.w),
                    width: 1.w,
                    height: 10.h,
                    color: weather.textColor,
                  ),
                  Text(
                    'Sunset 18:20',
                    style: AppTextStyles.medium15.copyWith(
                      color: weather.textColor,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
