import 'package:newweather/domain/datasource/forecast_datasource.dart';
import 'package:newweather/domain/entities/forecast_entity.dart';
import 'package:newweather/domain/repository/forecast_repository.dart';

class ForecastRepositoryImpl implements ForecastRepository {

  final ForecastDatasource datasource;

  ForecastRepositoryImpl({required this.datasource});

  @override
  Future<ForecastEntity> getForecast() {
    return datasource.getForecast();
  }
  
}