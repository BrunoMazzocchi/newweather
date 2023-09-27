import 'package:newweather/domain/entities/forecast_entity.dart';

abstract class ForecastRepository { 
  Future<ForecastEntity> getForecast(String city);
}