import 'package:newweather/domain/entities/forecast_entity.dart';

abstract class ForecastDatasource { 
  Future<ForecastEntity> getForecast();
}