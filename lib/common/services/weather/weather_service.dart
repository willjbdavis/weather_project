import 'dart:async';

import 'package:chopper/chopper.dart';
import 'package:weather_project/common/services/weather/model/weather_models.dart';

part 'weather_service.chopper.dart';

@ChopperApi()
abstract class WeatherService extends ChopperService {
  static WeatherService create([ChopperClient? client]) =>
      _$WeatherService(client);

  @Get(
    path:
        'https://api.open-meteo.com/v1/forecast?current=temperature_2m,relative_humidity_2m,is_day,precipitation,wind_speed_10m&hourly=temperature_2m,precipitation_probability&daily=temperature_2m_max,temperature_2m_min,sunrise,sunset,precipitation_sum,wind_speed_10m_max&temperature_unit=fahrenheit&wind_speed_unit=mph&precipitation_unit=inch',
  )
  Future<Response<WeatherResponse>> getWeather({
    @Query() required double latitude,
    @Query() required double longitude,
    @Query() required String timezone,
  });
}
