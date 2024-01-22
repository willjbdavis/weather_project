import 'package:flutter/material.dart';

class DailyWeatherCard extends StatelessWidget {
  final String time;
  final String dayTemp;
  final String nightTemp;
  final String precip;

  const DailyWeatherCard({
    super.key,
    required this.time,
    required this.dayTemp,
    required this.nightTemp,
    required this.precip,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white24,
      elevation: 5,
      child: Container(
        padding: const EdgeInsets.all(8.0),
        width: 200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(time),
            const Spacer(),
            ListTile(
              contentPadding: EdgeInsets.zero,
              dense: true,
              visualDensity: const VisualDensity(
                horizontal: VisualDensity.minimumDensity,
                vertical: VisualDensity.minimumDensity,
              ),
              title: Text(
                dayTemp,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              leading: const Icon(
                Icons.sunny,
                color: Colors.yellow,
                size: 24.0,
                semanticLabel: 'Water icon',
              ),
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              dense: true,
              visualDensity: const VisualDensity(
                horizontal: VisualDensity.minimumDensity,
                vertical: VisualDensity.minimumDensity,
              ),
              title: Text(
                nightTemp,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              leading: const Icon(
                Icons.nightlight,
                color: Colors.white70,
                size: 24.0,
                semanticLabel: 'Water icon',
              ),
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              dense: true,
              visualDensity: const VisualDensity(
                horizontal: VisualDensity.minimumDensity,
                vertical: VisualDensity.minimumDensity,
              ),
              title: Text(
                precip,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              leading: const Icon(
                Icons.water_drop,
                color: Colors.blue,
                size: 24.0,
                semanticLabel: 'Water icon',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
