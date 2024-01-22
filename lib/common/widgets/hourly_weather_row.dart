import 'dart:math';

import 'package:flutter/material.dart';
import 'package:weather_project/common/services/weather/model/weather_models.dart';
import 'package:weather_project/common/widgets/hourly_weather_card.dart';
import 'package:intl/intl.dart';

class HourlyWeatherRow extends StatelessWidget {
  final Hourly hourly;
  final HourlyUnits units;

  const HourlyWeatherRow({
    super.key,
    required this.hourly,
    required this.units,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
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
    final time = hourly.time;
    final temps = hourly.temperature2m;
    final precips = hourly.precipitationprobability;

    if (time == null || temps == null || precips == null) {
      return items;
    }

    final max = min(
      24,
      min(
        temps.length,
        min(
          precips.length,
          time.length,
        ),
      ),
    );

    for (int i = 0; i < max; i++) {
      final DateFormat formatter = DateFormat('h:mm a');
      String prettyTime = formatter.format(DateTime.parse(time[i]!).toUtc());

      items.add(HourlyWeatherCard(
        temp: '${temps[i]}${units.temperature2m ?? ''}',
        precip: '${precips[i]}${units.precipitationprobability ?? ''}',
        time: prettyTime,
      ));
    }

    return items;
  }
}
