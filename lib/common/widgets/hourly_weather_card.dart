import 'package:flutter/material.dart';

class HourlyWeatherCard extends StatelessWidget {
  final String temp;
  final String time;
  final String precip;

  const HourlyWeatherCard({
    super.key,
    required this.temp,
    required this.precip,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white24,
      elevation: 5,
      child: Container(
        width: 120,
        padding: const EdgeInsets.all(8.0),
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
                temp,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              leading: const Icon(
                Icons.thermostat,
                color: Colors.deepOrange,
                size: 24.0,
                semanticLabel: 'thermostat icon',
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
