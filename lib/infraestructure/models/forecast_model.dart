import 'package:newweather/infraestructure/models/current_weather_model.dart';

class ForecastModel { 
  final double latitude; 
  final double longitude; 
  final double generationTime; 
  final int utcOffsetSeconds; 
  final String timezone; 
  final String timezoneAbbreviation;
  final double elevation; 
  final CurrentWeatherModel currentWeather;

  const ForecastModel({
    required this.latitude,
    required this.longitude,
    required this.generationTime,
    required this.utcOffsetSeconds,
    required this.timezone,
    required this.timezoneAbbreviation,
    required this.elevation,
    required this.currentWeather,
  });

  factory ForecastModel.fromJson(Map<String, dynamic> json) {
    return ForecastModel(
      latitude: json['latitude'],
      longitude: json['longitude'],
      generationTime: json['generation_time'],
      utcOffsetSeconds: json['utc_offset_seconds'],
      timezone: json['timezone'],
      timezoneAbbreviation: json['timezone_abbr'],
      elevation: json['elevation'],
      currentWeather: CurrentWeatherModel.fromJson(json['current_weather']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'latitude': latitude,
      'longitude': longitude,
      'generation_time': generationTime,
      'utc_offset_seconds': utcOffsetSeconds,
      'timezone': timezone,
      'timezone_abbr': timezoneAbbreviation,
      'elevation': elevation,
      'current_weather': currentWeather.toJson(),
    };
  }
}