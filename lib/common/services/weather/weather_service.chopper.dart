// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$WeatherService extends WeatherService {
  _$WeatherService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = WeatherService;

  @override
  Future<Response<WeatherResponse>> getWeather({
    required double latitude,
    required double longitude,
    required String timezone,
  }) {
    final Uri $url = Uri.parse(
        'https://api.open-meteo.com/v1/forecast?current=temperature_2m,relative_humidity_2m,is_day,precipitation,wind_speed_10m&hourly=temperature_2m,precipitation_probability&daily=temperature_2m_max,temperature_2m_min,sunrise,sunset,precipitation_sum,wind_speed_10m_max&temperature_unit=fahrenheit&wind_speed_unit=mph&precipitation_unit=inch');
    final Map<String, dynamic> $params = <String, dynamic>{
      'latitude': latitude,
      'longitude': longitude,
      'timezone': timezone,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<WeatherResponse, WeatherResponse>($request);
  }
}
