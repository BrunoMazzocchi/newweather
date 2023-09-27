class CurrentWeatherEntity { 
  final num temperature;
  final num windSpeed; 
  final num windDirection; 
  final num weatherCode; 
  final num isDay; 
  final DateTime time; 

  const CurrentWeatherEntity ({
    required this.temperature,
    required this.windSpeed,
    required this.windDirection,
    required this.weatherCode,
    required this.isDay,
    required this.time,
  });

}