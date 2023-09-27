part of 'forecast_bloc.dart';

@immutable
sealed class ForecastState {}

final class ForecastInitial extends ForecastState {}

final class ForecastLoading extends ForecastState {}

final class ForecastLoaded extends ForecastState {
  final ForecastEntity forecast;

  ForecastLoaded({required this.forecast});
}

final class ForecastError extends ForecastState {
  final String message;

  ForecastError({required this.message});
}