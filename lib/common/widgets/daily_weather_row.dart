import 'dart:math';

import 'package:flutter/material.dart';
import 'package:weather_project/common/services/weather/model/weather_models.dart';
import 'package:weather_project/common/widgets/daily_weather_card.dart';

class DailyWeatherRow extends StatelessWidget {
  final Daily daily;
  final DailyUnits units;

  const DailyWeatherRow({
    super.key,
    required this.daily,
    required this.units,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          const SizedBox(
            width: 12.0,
          ),
          ...buildItems(),
          const SizedBox(
            width: 12.0,
          ),
        ],
      ),
    );
  }

  List<Widget> buildItems() {
    List<Widget> items = [];

    final time = daily.time;
    final dayTemps = daily.temperature2mmax;
    final nightTemps = daily.temperature2mmin;
    final precips = daily.precipitationsum;

    if (time == null ||
        dayTemps == null ||
        nightTemps == null ||
        precips == null) {
      return items;
    }

    final max = min(
      7,
      min(
        time.length,
        min(
          dayTemps.length,
          min(
            nightTemps.length,
            precips.length,
          ),
        ),
      ),
    );

    for (var i = 0; i < max; i++) {
      items.add(DailyWeatherCard(
        time: '${time[i]}',
        dayTemp: '${dayTemps[i]}${units.temperature2mmax ?? ''}',
        nightTemp: '${nightTemps[i]}${units.temperature2mmin ?? ''}',
        precip: '${precips[i]} ${units.precipitationsum ?? ''}',
      ));
    }
    return items;
  }
}
