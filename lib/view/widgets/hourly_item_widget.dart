import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:weather_app/core/app_theme.dart';
import 'package:weather_app/model/hourly_weather_model.dart';

class HourlItemWidget extends StatelessWidget {
  final HourlyWeather hourlyWeather;
  const HourlItemWidget({super.key, required this.hourlyWeather});

  @override
  Widget build(BuildContext context) {
    final hour = hourlyWeather.time.hour == DateTime.now().hour
        ? "Now"
        : "${hourlyWeather.time.hour.toString().padLeft(2, '0')}:00";
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(hour, style: AppTextStyles.regular15),
        const SizedBox(height: 8),
        Row(
          children: [
            SvgPicture.asset(
              hourlyWeather.condition.iconPath,
              height: 12.h,
              color: Colors.white,
            ),
            SizedBox(width: 5.w),
            Text(
              "${hourlyWeather.temperature.toStringAsFixed(0)}°",
              style: AppTextStyles.regular15,
            ),
          ],
        ),
      ],
    );
  }
}
