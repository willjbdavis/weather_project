import 'package:flutter/material.dart';
import 'package:weather_project/common/services/weather/model/weather_models.dart';
import 'package:weather_project/common/widgets/large_weather_card.dart';
import 'package:weather_project/features/home/pages/home/home_page_vm.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:provider/provider.dart';
import 'widget_test.mocks.dart';

@GenerateMocks([HomePageVM])
void main() {
  testWidgets('Test the LargeWeatherCard', (WidgetTester tester) async {

    final vm = MockHomePageVM();

    when(vm.weatherResponse).thenAnswer((realInvocation) => WeatherResponse(
      current: Current(
        temperature2m: 32.0,
        precipitation: 0.5,
      ),
      currentunits: CurrentUnits(
        temperature2m: 'F',
        precipitation: 'in',
      ),
      hourly: null,
      hourlyunits: null,
      daily: null,
      dailyunits: null,
      timezone: 'America/New_York',
    ));


    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: ChangeNotifierProvider<HomePageVM>.value(
            value: vm,
            child: const LargeWeatherCard(),
          ),
        ),
      ),
    );

    expect(find.text('America/New_York'), findsOneWidget);
  });
}
