// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Current _$CurrentFromJson(Map<String, dynamic> json) => Current(
      time: json['time'] as String?,
      interval: json['interval'] as int?,
      temperature2m: (json['temperature_2m'] as num?)?.toDouble(),
      relativehumidity2m: json['relative_humidity_2m'] as int?,
      isday: json['is_day'] as int?,
      precipitation: (json['precipitation'] as num?)?.toDouble(),
      windspeed10m: (json['wind_speed_10m'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$CurrentToJson(Current instance) => <String, dynamic>{
      'time': instance.time,
      'interval': instance.interval,
      'temperature_2m': instance.temperature2m,
      'relative_humidity_2m': instance.relativehumidity2m,
      'is_day': instance.isday,
      'precipitation': instance.precipitation,
      'wind_speed_10m': instance.windspeed10m,
    };

CurrentUnits _$CurrentUnitsFromJson(Map<String, dynamic> json) => CurrentUnits(
      time: json['time'] as String?,
      interval: json['interval'] as String?,
      temperature2m: json['temperature_2m'] as String?,
      relativehumidity2m: json['relative_humidity_2m'] as String?,
      isday: json['is_day'] as String?,
      precipitation: json['precipitation'] as String?,
      windspeed10m: json['wind_speed_10m'] as String?,
    );

Map<String, dynamic> _$CurrentUnitsToJson(CurrentUnits instance) =>
    <String, dynamic>{
      'time': instance.time,
      'interval': instance.interval,
      'temperature_2m': instance.temperature2m,
      'relative_humidity_2m': instance.relativehumidity2m,
      'is_day': instance.isday,
      'precipitation': instance.precipitation,
      'wind_speed_10m': instance.windspeed10m,
    };

Daily _$DailyFromJson(Map<String, dynamic> json) => Daily(
      time: (json['time'] as List<dynamic>?)?.map((e) => e as String?).toList(),
      temperature2mmax: (json['temperature_2m_max'] as List<dynamic>?)
          ?.map((e) => (e as num?)?.toDouble())
          .toList(),
      temperature2mmin: (json['temperature_2m_min'] as List<dynamic>?)
          ?.map((e) => (e as num?)?.toDouble())
          .toList(),
      sunrise: (json['sunrise'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      sunset:
          (json['sunset'] as List<dynamic>?)?.map((e) => e as String?).toList(),
      precipitationsum: (json['precipitation_sum'] as List<dynamic>?)
          ?.map((e) => (e as num?)?.toDouble())
          .toList(),
      windspeed10mmax: (json['wind_speed_10m_max'] as List<dynamic>?)
          ?.map((e) => (e as num?)?.toDouble())
          .toList(),
    );

Map<String, dynamic> _$DailyToJson(Daily instance) => <String, dynamic>{
      'time': instance.time,
      'temperature_2m_max': instance.temperature2mmax,
      'temperature_2m_min': instance.temperature2mmin,
      'sunrise': instance.sunrise,
      'sunset': instance.sunset,
      'precipitation_sum': instance.precipitationsum,
      'wind_speed_10m_max': instance.windspeed10mmax,
    };

DailyUnits _$DailyUnitsFromJson(Map<String, dynamic> json) => DailyUnits(
      time: json['time'] as String?,
      temperature2mmax: json['temperature_2m_max'] as String?,
      temperature2mmin: json['temperature_2m_min'] as String?,
      sunrise: json['sunrise'] as String?,
      sunset: json['sunset'] as String?,
      precipitationsum: json['precipitation_sum'] as String?,
      windspeed10mmax: json['wind_speed_10m_max'] as String?,
    );

Map<String, dynamic> _$DailyUnitsToJson(DailyUnits instance) =>
    <String, dynamic>{
      'time': instance.time,
      'temperature_2m_max': instance.temperature2mmax,
      'temperature_2m_min': instance.temperature2mmin,
      'sunrise': instance.sunrise,
      'sunset': instance.sunset,
      'precipitation_sum': instance.precipitationsum,
      'wind_speed_10m_max': instance.windspeed10mmax,
    };

Hourly _$HourlyFromJson(Map<String, dynamic> json) => Hourly(
      time: (json['time'] as List<dynamic>?)?.map((e) => e as String?).toList(),
      temperature2m: (json['temperature_2m'] as List<dynamic>?)
          ?.map((e) => (e as num?)?.toDouble())
          .toList(),
      precipitationprobability:
          (json['precipitation_probability'] as List<dynamic>?)
              ?.map((e) => e as int?)
              .toList(),
    );

Map<String, dynamic> _$HourlyToJson(Hourly instance) => <String, dynamic>{
      'time': instance.time,
      'temperature_2m': instance.temperature2m,
      'precipitation_probability': instance.precipitationprobability,
    };

HourlyUnits _$HourlyUnitsFromJson(Map<String, dynamic> json) => HourlyUnits(
      time: json['time'] as String?,
      temperature2m: json['temperature_2m'] as String?,
      precipitationprobability: json['precipitation_probability'] as String?,
    );

Map<String, dynamic> _$HourlyUnitsToJson(HourlyUnits instance) =>
    <String, dynamic>{
      'time': instance.time,
      'temperature_2m': instance.temperature2m,
      'precipitation_probability': instance.precipitationprobability,
    };

WeatherResponse _$WeatherResponseFromJson(Map<String, dynamic> json) =>
    WeatherResponse(
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      generationtimems: (json['generationtime_ms'] as num?)?.toDouble(),
      utcoffsetseconds: json['utc_offset_seconds'] as int?,
      timezone: json['timezone'] as String?,
      timezoneabbreviation: json['timezone_abbreviation'] as String?,
      elevation: (json['elevation'] as num?)?.toDouble(),
      currentunits: json['current_units'] == null
          ? null
          : CurrentUnits.fromJson(
              json['current_units'] as Map<String, dynamic>),
      current: json['current'] == null
          ? null
          : Current.fromJson(json['current'] as Map<String, dynamic>),
      hourlyunits: json['hourly_units'] == null
          ? null
          : HourlyUnits.fromJson(json['hourly_units'] as Map<String, dynamic>),
      hourly: json['hourly'] == null
          ? null
          : Hourly.fromJson(json['hourly'] as Map<String, dynamic>),
      dailyunits: json['daily_units'] == null
          ? null
          : DailyUnits.fromJson(json['daily_units'] as Map<String, dynamic>),
      daily: json['daily'] == null
          ? null
          : Daily.fromJson(json['daily'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WeatherResponseToJson(WeatherResponse instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'generationtime_ms': instance.generationtimems,
      'utc_offset_seconds': instance.utcoffsetseconds,
      'timezone': instance.timezone,
      'timezone_abbreviation': instance.timezoneabbreviation,
      'elevation': instance.elevation,
      'current_units': instance.currentunits,
      'current': instance.current,
      'hourly_units': instance.hourlyunits,
      'hourly': instance.hourly,
      'daily_units': instance.dailyunits,
      'daily': instance.daily,
    };
