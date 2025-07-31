import 'package:flutter/material.dart';
import 'package:weather_app/core/app_theme.dart';
import 'package:weather_app/core/assets.dart';
import 'package:weather_app/view/widgets/main_weather_card.dart';

class WeatherHomePage extends StatelessWidget {
  const WeatherHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppImages.cloudyBackgroundImage),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: 53,
              horizontal: 34,
            ).copyWith(bottom: 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                MainWeatherCard(),

                const SizedBox(height: 35),

                _buildHourlyForecast(),

                const SizedBox(height: 50),

                _buildRandomTextSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHourlyForecast() {
    final hours = ['Now', '2 AM', '3 AM', '4 AM', '5 AM'];
    final temps = ['25°', '25°', '23°', '22°', '20°'];
    final hours2 = ['6 AM', '7 AM', '8 AM', '9 AM', '10 AM'];
    final temps2 = ['25°', '25°', '23°', '22°', '20°'];

    return Container(
      padding: EdgeInsets.only(top: 20, left: 30, right: 30, bottom: 30),
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(5, (index) {
              return _buildHourlyItem(hours[index], temps[index]);
            }),
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(5, (index) {
              return _buildHourlyItem(hours2[index], temps2[index]);
            }),
          ),
        ],
      ),
    );
  }

  Widget _buildHourlyItem(String hour, String temp) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(hour, style: AppTextStyles.regular15),
        const SizedBox(height: 8),
        Row(
          children: [
            const Icon(Icons.cloud, color: Colors.white, size: 16),
            SizedBox(width: 5),
            Text(temp, style: AppTextStyles.regular15),
          ],
        ),
      ],
    );
  }

  Widget _buildRandomTextSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Random Text', style: AppTextStyles.semibold20),
        const SizedBox(height: 10),
        Text(
          'Improve him believe opinion offered met and end cheered forbade. Friendly as stronger speedily by recurred. Son interest wandered sir addition end say. Manners beloved affixed picture men ask.',
          style: AppTextStyles.semibold15,
        ),
      ],
    );
  }
}
