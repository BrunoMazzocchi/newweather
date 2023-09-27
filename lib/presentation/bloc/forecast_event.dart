part of 'forecast_bloc.dart';

@immutable
sealed class ForecastEvent {}

final class ForecastEventGetForecastByLocation extends ForecastEvent {
  final double lat;
  final double lon;

  ForecastEventGetForecastByLocation({required this.lat, required this.lon});
}