import 'package:newweather/domain/entities/current_weather_entity.dart';

class ForecastEntity { 
  final num latitude; 
  final num longitude; 
  final num generationTime; 
  final num utcOffsetSeconds; 
  final String timezone; 
  final String timezoneAbbreviation;
  final num elevation; 
  final CurrentWeatherEntity currentWeather;

  const ForecastEntity({
    required this.latitude,
    required this.longitude,
    required this.generationTime,
    required this.utcOffsetSeconds,
    required this.timezone,
    required this.timezoneAbbreviation,
    required this.elevation,
    required this.currentWeather,
  });

}