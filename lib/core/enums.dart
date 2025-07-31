import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:weather_app/core/assets.dart';
import 'package:weather_app/core/colors.dart';

enum WeatherCondition {
  Sunny(
    backgroundImage: AppImages.sunnyBackgroundImage,
    containerColor: AppColors.sunnyMainContainerColor,
    iconPath: AppImages.sunIcon,
    textColor: AppColors.sunnyMainTextColor,
  ),
  Rainy(
    backgroundImage: AppImages.rainyBackgroundImage,
    containerColor: AppColors.rainyMainContainerColor,
    iconPath: AppImages.rainyIcon,
    textColor: AppColors.rainyMainTextColor,
  ),
  Cloudy(
    backgroundImage: AppImages.cloudyBackgroundImage,
    containerColor: AppColors.cloudyMainContainerColor,
    iconPath: AppImages.cloudIcon,
    textColor: AppColors.cloudyMainTextColor,
  ),

  Snowy(
    backgroundImage: AppImages.snowyBackgroundImage,
    containerColor: AppColors.snowyMainContainerColor,
    iconPath: AppImages.cloudIcon,
    textColor: AppColors.snowyMainTextColor,
  );

  final String backgroundImage;
  final Color containerColor;
  final String iconPath;
  final Color textColor;

  const WeatherCondition({
    required this.backgroundImage,
    required this.containerColor,
    required this.iconPath,
    required this.textColor,
  });
}
