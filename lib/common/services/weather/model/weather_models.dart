import 'package:json_annotation/json_annotation.dart';

part 'weather_models.g.dart';

@JsonSerializable()
class Current {
  String? time;
  int? interval;
  @JsonKey(name: 'temperature_2m')
  double? temperature2m;
  @JsonKey(name: 'relative_humidity_2m')
  int? relativehumidity2m;
  @JsonKey(name: 'is_day')
  int? isday;
  double? precipitation;
  @JsonKey(name: 'wind_speed_10m')
  double? windspeed10m;

  Current({
    this.time,
    this.interval,
    this.temperature2m,
    this.relativehumidity2m,
    this.isday,
    this.precipitation,
    this.windspeed10m,
  });

  factory Current.fromJson(Map<String, dynamic> json) =>
      _$CurrentFromJson(json);

  Map<String, dynamic> toJson() => _$CurrentToJson(this);
}

@JsonSerializable()
class CurrentUnits {
  String? time;
  String? interval;
  @JsonKey(name: 'temperature_2m')
  String? temperature2m;
  @JsonKey(name: 'relative_humidity_2m')
  String? relativehumidity2m;
  @JsonKey(name: 'is_day')
  String? isday;
  String? precipitation;
  @JsonKey(name: 'wind_speed_10m')
  String? windspeed10m;

  CurrentUnits({
    this.time,
    this.interval,
    this.temperature2m,
    this.relativehumidity2m,
    this.isday,
    this.precipitation,
    this.windspeed10m,
  });

  factory CurrentUnits.fromJson(Map<String, dynamic> json) =>
      _$CurrentUnitsFromJson(json);

  Map<String, dynamic> toJson() => _$CurrentUnitsToJson(this);
}

@JsonSerializable()
class Daily {
  List<String?>? time;
  @JsonKey(name: 'temperature_2m_max')
  List<double?>? temperature2mmax;
  @JsonKey(name: 'temperature_2m_min')
  List<double?>? temperature2mmin;
  List<String?>? sunrise;
  List<String?>? sunset;
  @JsonKey(name: 'precipitation_sum')
  List<double?>? precipitationsum;
  @JsonKey(name: 'wind_speed_10m_max')
  List<double?>? windspeed10mmax;

  Daily({
    this.time,
    this.temperature2mmax,
    this.temperature2mmin,
    this.sunrise,
    this.sunset,
    this.precipitationsum,
    this.windspeed10mmax,
  });

  factory Daily.fromJson(Map<String, dynamic> json) => _$DailyFromJson(json);

  Map<String, dynamic> toJson() => _$DailyToJson(this);
}

@JsonSerializable()
class DailyUnits {
  String? time;
  @JsonKey(name: 'temperature_2m_max')
  String? temperature2mmax;
  @JsonKey(name: 'temperature_2m_min')
  String? temperature2mmin;
  String? sunrise;
  String? sunset;
  @JsonKey(name: 'precipitation_sum')
  String? precipitationsum;
  @JsonKey(name: 'wind_speed_10m_max')
  String? windspeed10mmax;

  DailyUnits({
    this.time,
    this.temperature2mmax,
    this.temperature2mmin,
    this.sunrise,
    this.sunset,
    this.precipitationsum,
    this.windspeed10mmax,
  });

  factory DailyUnits.fromJson(Map<String, dynamic> json) =>
      _$DailyUnitsFromJson(json);

  Map<String, dynamic> toJson() => _$DailyUnitsToJson(this);
}

@JsonSerializable()
class Hourly {
  List<String?>? time;
  @JsonKey(name: 'temperature_2m')
  List<double?>? temperature2m;
  @JsonKey(name: 'precipitation_probability')
  List<int?>? precipitationprobability;

  Hourly({
    this.time,
    this.temperature2m,
    this.precipitationprobability,
  });

  factory Hourly.fromJson(Map<String, dynamic> json) => _$HourlyFromJson(json);

  Map<String, dynamic> toJson() => _$HourlyToJson(this);
}

@JsonSerializable()
class HourlyUnits {
  String? time;
  @JsonKey(name: 'temperature_2m')
  String? temperature2m;
  @JsonKey(name: 'precipitation_probability')
  String? precipitationprobability;

  HourlyUnits({
    this.time,
    this.temperature2m,
    this.precipitationprobability,
  });

  factory HourlyUnits.fromJson(Map<String, dynamic> json) =>
      _$HourlyUnitsFromJson(json);

  Map<String, dynamic> toJson() => _$HourlyUnitsToJson(this);
}

@JsonSerializable()
class WeatherResponse {
  double? latitude;
  double? longitude;
  @JsonKey(name: 'generationtime_ms')
  double? generationtimems;
  @JsonKey(name: 'utc_offset_seconds')
  int? utcoffsetseconds;
  String? timezone;
  @JsonKey(name: 'timezone_abbreviation')
  String? timezoneabbreviation;
  double? elevation;
  @JsonKey(name: 'current_units')
  CurrentUnits? currentunits;
  Current? current;
  @JsonKey(name: 'hourly_units')
  HourlyUnits? hourlyunits;
  Hourly? hourly;
  @JsonKey(name: 'daily_units')
  DailyUnits? dailyunits;
  Daily? daily;

  WeatherResponse({
    this.latitude,
    this.longitude,
    this.generationtimems,
    this.utcoffsetseconds,
    this.timezone,
    this.timezoneabbreviation,
    this.elevation,
    this.currentunits,
    this.current,
    this.hourlyunits,
    this.hourly,
    this.dailyunits,
    this.daily,
  });

  factory WeatherResponse.fromJson(Map<String, dynamic> json) =>
      _$WeatherResponseFromJson(json);

  Map<String, dynamic> toJson() => _$WeatherResponseToJson(this);
}
