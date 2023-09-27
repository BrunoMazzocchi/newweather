class CurrentWeatherEntity { 
  final double temperature;
  final double windSpeed; 
  final double windDirection; 
  final int weatherCode; 
  final int isDay; 
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