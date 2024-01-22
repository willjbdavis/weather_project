import 'package:flutter/cupertino.dart';
import 'package:weather_project/common/widgets/daily_weather_row.dart';
import 'package:weather_project/common/widgets/hourly_weather_row.dart';
import 'package:weather_project/common/widgets/large_weather_card.dart';
import 'package:weather_project/common/widgets/or.dart';
import 'package:weather_project/common/widgets/title_row.dart';
import 'package:weather_project/features/home/pages/home/home_page_vm.dart';
import 'package:provider/provider.dart';

class HomePageLoaded extends StatelessWidget {
  const HomePageLoaded({super.key});

  @override
  Widget build(BuildContext context) {
    final vm = context.watch<HomePageVM>();

    final bool showHourly = vm.weatherResponse?.hourly != null &&
        vm.weatherResponse?.hourlyunits != null;
    final bool showDaily = vm.weatherResponse?.daily != null &&
        vm.weatherResponse?.dailyunits != null;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          height: 24,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.0),
          child: LargeWeatherCard(),
        ),
        Or(
          predicate: () => showHourly,
          trueBuilder: (context) {
            return const TitleRow(title: 'Hourly');
          },
        ),
        Or(
          predicate: () => showHourly,
          trueBuilder: (context) {
            return HourlyWeatherRow(
                hourly: vm.weatherResponse!.hourly!,
                units: vm.weatherResponse!.hourlyunits!);
          },
        ),
        Or(
          predicate: () => showDaily,
          trueBuilder: (context) {
            return const TitleRow(title: 'Daily');
          },
        ),
        Or(
          predicate: () => showDaily,
          trueBuilder: (context) {
            return DailyWeatherRow(
                daily: vm.weatherResponse!.daily!,
                units: vm.weatherResponse!.dailyunits!);
          },
        ),
        const SizedBox(
          height: 24,
        ),
      ],
    );
  }
}
