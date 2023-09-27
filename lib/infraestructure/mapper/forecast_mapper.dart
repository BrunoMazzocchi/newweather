import 'package:newweather/domain/entities/current_weather_entity.dart';
import 'package:newweather/domain/entities/forecast_entity.dart';
import 'package:newweather/infraestructure/models/current_weather_model.dart';
import 'package:newweather/infraestructure/models/forecast_model.dart';

class ForecastMapper {
  static ForecastEntity fromForecastModel(ForecastModel model) {
    return ForecastEntity(
      currentWeather: fromCurrentWeatherModel(model.currentWeather),
      elevation: model.elevation,
      generationTime: model.generationTime,
      latitude: model.latitude,
      longitude: model.longitude,
      timezone: model.timezone,
      timezoneAbbreviation: model.timezoneAbbreviation,
      utcOffsetSeconds: model.utcOffsetSeconds,
    );
  }

  static CurrentWeatherEntity fromCurrentWeatherModel(
      CurrentWeatherModel model) {
    return CurrentWeatherEntity(
      temperature: model.temperature,
      windSpeed: model.windDirection,
      windDirection: model.windDirection,
      weatherCode: model.weatherCode,
      isDay: model.isDay,
      time: model.time,
    );
  }
}
