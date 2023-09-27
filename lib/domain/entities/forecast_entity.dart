import 'package:newweather/domain/entities/current_weather_entity.dart';

class ForecastEntity { 
  final double latitude; 
  final double longitude; 
  final double generationTime; 
  final int utcOffsetSeconds; 
  final String timezone; 
  final String timezoneAbbreviation;
  final double elevation; 
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