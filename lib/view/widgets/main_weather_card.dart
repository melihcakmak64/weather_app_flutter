import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:weather_app/core/app_theme.dart';
import 'package:weather_app/core/colors.dart';

class MainWeatherCard extends StatelessWidget {
  const MainWeatherCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          padding: const EdgeInsets.symmetric(
            vertical: 25,
          ).copyWith(bottom: 34),
          decoration: BoxDecoration(
            color: AppColors.cloudyMainContainerColor,
            borderRadius: BorderRadius.circular(35),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Today dropdown
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Today',
                    style: AppTextStyles.medium25.copyWith(
                      color: AppColors.cloudyMainTextColor,
                    ),
                  ),
                  const SizedBox(width: 15),
                  Icon(
                    Icons.keyboard_arrow_down,
                    color: AppColors.cloudyMainTextColor,
                    size: 20,
                  ),
                ],
              ),

              const SizedBox(height: 20),

              // Weather icon and temperature
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Cloud icon
                  const Icon(
                    Icons.cloud,
                    color: AppColors.cloudyMainTextColor,
                    size: 72,
                  ),

                  const SizedBox(width: 20),

                  // Temperature
                  Text(
                    '25°',
                    style: AppTextStyles.medium100.copyWith(
                      color: AppColors.cloudyMainTextColor,
                    ),
                  ),
                ],
              ),

              // Weather description
              Text(
                'Cloudy',
                style: AppTextStyles.semibold20.copyWith(
                  color: AppColors.cloudyMainTextColor,
                ),
              ),

              const SizedBox(height: 15),

              // Location
              Text(
                'California, Los Angeles',
                style: AppTextStyles.medium15.copyWith(
                  color: AppColors.cloudyMainTextColor,
                ),
              ),

              const SizedBox(height: 25),

              // Date
              Text(
                '21 Oct 2019',
                style: AppTextStyles.medium15.copyWith(
                  color: AppColors.cloudyMainTextColor,
                ),
              ),

              const SizedBox(height: 15),

              // Feels like and sunset
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Feels like 28°',
                    style: AppTextStyles.medium15.copyWith(
                      color: AppColors.cloudyMainTextColor,
                    ),
                  ),
                  Container(
                    width: 1,
                    height: 15,
                    color: AppColors.cloudyMainTextColor,
                  ),
                  Text(
                    'Sunset 18:20',
                    style: AppTextStyles.medium15.copyWith(
                      color: AppColors.cloudyMainTextColor,
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
