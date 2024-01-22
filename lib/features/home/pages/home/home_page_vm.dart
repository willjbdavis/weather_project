import 'dart:async';

import 'package:chopper/chopper.dart';
import 'package:flutter/material.dart';
import 'package:weather_project/common/services/location/location_service.dart';
import 'package:weather_project/common/services/location/timezone_service.dart';
import 'package:weather_project/common/services/weather/model/weather_models.dart';
import 'package:weather_project/common/services/weather/weather_service.dart';
import 'package:weather_project/common/simple_vm_state.dart';
import 'package:weather_project/main.dart';
import 'package:geolocator/geolocator.dart';


class HomePageVM extends ChangeNotifier {
  late final WeatherService _weatherService;
  late final LocationService _locationService;
  late final TimeZoneService _timeZoneService;
  SimpleVMState _state = SimpleVMState.loading;
  WeatherResponse? weatherResponse;

  HomePageVM({
    WeatherService? weatherService,
    LocationService? locationService,
    TimeZoneService? timeZoneService,
  }) {
    _weatherService = weatherService ?? getIt<WeatherService>();
    _locationService = locationService ?? getIt<LocationService>();
    _timeZoneService = timeZoneService ?? getIt<TimeZoneService>();
    unawaited(fetchWeather());
  }

  Future<void> fetchWeather() async {
    _setState(SimpleVMState.loading);
    try {
      final Position position = await _locationService.determinePosition();
      final String timezoneId = await _timeZoneService.getTimeZoneId();
      Response<WeatherResponse> response = await _weatherService.getWeather(
        latitude: position.latitude,
        longitude: position.longitude,
        timezone: timezoneId,
      );
      if (!response.isSuccessful || response.body == null) {
        throw Exception('unable to load weather.');
      }
      weatherResponse = response.body;
      _setState(SimpleVMState.loaded);
    } catch (e) {
      _setState(SimpleVMState.error);
      return Future.error(e);
    }
    return Future.value();
  }

  SimpleVMState get state => _state;

  void _setState(SimpleVMState state) {
    if (_state != state) {
      _state = state;
      notifyListeners();
    }
  }
}
