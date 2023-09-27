class CurrentWeatherModel { 
  final num temperature;
  final num windSpeed; 
  final num windDirection; 
  final num weatherCode; 
  final num isDay; 
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
      windSpeed: json['windspeed'],
      windDirection: json['winddirection'],
      weatherCode: json['weathercode'],
      isDay: json['is_day'],
      time: DateTime.parse(json['time']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'temperature': temperature,
      'windspeed': windSpeed,
      'winddirection': windDirection,
      'weathercode': weatherCode,
      'is_day': isDay,
      'time': time.toIso8601String(),
    };
  }
}