import 'package:flutter/material.dart';
import 'package:weather_project/common/widgets/icon_row.dart';
import 'package:weather_project/common/widgets/or.dart';
import 'package:weather_project/common/widgets/title_row.dart';
import 'package:weather_project/features/home/pages/home/home_page_vm.dart';
import 'package:provider/provider.dart';

class LargeWeatherCard extends StatelessWidget {
  const LargeWeatherCard({super.key});

  @override
  Widget build(BuildContext context) {
    final HomePageVM vm = context.watch<HomePageVM>();
    return Card(
      color: Colors.white24,
      elevation: 5,
      child: AspectRatio(
        aspectRatio: 1,
        child: Column(
          children: [
            TitleRow(title: vm.weatherResponse?.timezone ?? ''),
            Text(
              '${vm.weatherResponse?.latitude},${vm.weatherResponse?.longitude}',
              style: Theme.of(context).textTheme.labelSmall,
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'change location',
                style: Theme.of(context).textTheme.labelMedium?.copyWith(
                      letterSpacing: 1.2,
                      decoration: TextDecoration.underline,
                      color: Colors.orangeAccent,
                      decorationColor: Colors.orangeAccent,
                    ),
              ),
            ),
            Or(
              predicate: () {
                return vm.weatherResponse?.current?.temperature2m != null &&
                    vm.weatherResponse?.currentunits?.temperature2m != null;
              },
              trueBuilder: (_) {
                return Text(
                  '${vm.weatherResponse?.current?.temperature2m}${vm.weatherResponse?.currentunits?.temperature2m}',
                  style: Theme.of(context)
                      .textTheme
                      .displayLarge
                      ?.copyWith(color: Colors.white),
                );
              },
            ),
            const Spacer(),
            Or(
              predicate: () =>
                  vm.weatherResponse?.current?.precipitation != null &&
                  vm.weatherResponse?.currentunits?.precipitation != null,
              trueBuilder: (context) {
                return IconRow(
                  iconData: Icons.water_drop,
                  text:
                      'Precipitation: ${vm.weatherResponse?.current?.precipitation} ${vm.weatherResponse?.currentunits?.precipitation}',
                  color: Colors.blue,
                );
              },
            ),
            Or(
              predicate: () =>
                  vm.weatherResponse?.current?.windspeed10m != null &&
                  vm.weatherResponse?.currentunits?.windspeed10m != null,
              trueBuilder: (context) {
                return IconRow(
                  iconData: Icons.air,
                  text:
                      'Wind: ${vm.weatherResponse?.current?.windspeed10m}${vm.weatherResponse?.currentunits?.windspeed10m}',
                  color: Colors.blue,
                );
              },
            ),
            Or(
              predicate: () =>
                  vm.weatherResponse?.current?.relativehumidity2m != null &&
                  vm.weatherResponse?.currentunits?.relativehumidity2m != null,
              trueBuilder: (context) {
                return IconRow(
                  iconData: Icons.water,
                  text:
                      'Humidity: ${vm.weatherResponse?.current?.relativehumidity2m}${vm.weatherResponse?.currentunits?.relativehumidity2m}',
                  color: Colors.blue,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
