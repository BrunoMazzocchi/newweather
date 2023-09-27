class CurrentWeatherModel { 
  final double temperature;
  final double windSpeed; 
  final double windDirection; 
  final int weatherCode; 
  final int isDay; 
  final DateTime time; 

  const CurrentWeatherModel ({
    required this.temperature,
    required this.windSpeed,
    required this.windDirection,
    required this.weatherCode,
    required this.isDay,
    required this.time,
  });

  factory CurrentWeatherModel.fromJson(Map<String, dynamic> json) {
    return CurrentWeatherModel(
      temperature: json['temperature'],
      windSpeed: json['wind_speed'],
      windDirection: json['wind_direction'],
      weatherCode: json['weather_code'],
      isDay: json['is_day'],
      time: DateTime.parse(json['time']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'temperature': temperature,
      'wind_speed': windSpeed,
      'wind_direction': windDirection,
      'weather_code': weatherCode,
      'is_day': isDay,
      'time': time.toIso8601String(),
    };
  }
}