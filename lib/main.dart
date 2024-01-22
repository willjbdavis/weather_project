import 'package:chopper/chopper.dart';
import 'package:flutter/material.dart';
import 'package:weather_project/common/json_to_type_converter.dart';
import 'package:weather_project/common/services/location/location_service.dart';
import 'package:weather_project/common/services/location/timezone_service.dart';
import 'package:weather_project/common/services/weather/model/weather_models.dart';
import 'package:weather_project/common/services/weather/weather_service.dart';
import 'package:weather_project/features/home/pages/home/home_page.dart';
import 'package:get_it/get_it.dart';

// This is our global ServiceLocator
GetIt getIt = GetIt.instance;

void main() {
  getIt.registerSingleton<LocationService>(
    LocationService(),
  );
  getIt.registerSingleton<TimeZoneService>(
    TimeZoneService(),
  );
  getIt.registerSingleton<ChopperClient>(
    ChopperClient(
      converter: JsonToTypeConverter({
        WeatherResponse: (jsonData) => WeatherResponse.fromJson(jsonData),
      }),
      errorConverter: const JsonConverter(),
    ),
  );
  getIt.registerSingleton<WeatherService>(
    WeatherService.create(
      getIt<ChopperClient>(),
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        textTheme: Typography().white,
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
