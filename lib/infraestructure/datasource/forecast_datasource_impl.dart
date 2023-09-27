import 'package:newweather/domain/datasource/forecast_datasource.dart';
import 'package:newweather/domain/entities/forecast_entity.dart';
import 'package:newweather/infraestructure/mapper/forecast_mapper.dart';
import 'package:newweather/infraestructure/models/forecast_model.dart';
import 'package:newweather/util/api/api_client.dart';

class ForecastDatasourceImpl implements ForecastDatasource {
  final ApiClient apiClient;

  ForecastDatasourceImpl({required this.apiClient});

  @override
  Future<ForecastEntity> getForecast() async {
    try {
      final response = await apiClient.get(path: '?latitude=12.1328&longitude=-86.2504&current_weather=true&temperature_unit=celsius&timeformat=iso8601&timezone=GMT');

      if(response.statusCode != 200) {
        throw Exception('Error getting forecast');
      } else {
        final forecast = ForecastModel.fromJson(response.data);
        return ForecastMapper.fromForecastModel(forecast);
      }

    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
