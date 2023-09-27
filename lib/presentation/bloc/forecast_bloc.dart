import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:newweather/domain/entities/forecast_entity.dart';
import 'package:newweather/domain/repository/forecast_repository.dart';

part 'forecast_event.dart';
part 'forecast_state.dart';

class ForecastBloc extends Bloc<ForecastEvent, ForecastState> {
  ForecastRepository repository;

  ForecastBloc({required this.repository}) : super(ForecastInitial()) {
    
    

    on<ForecastEventGetForecastByLocation>((event, emit) async {
        emit(ForecastLoading());
        try {
          final forecast = await repository.getForecast();
          emit(ForecastLoaded(forecast: forecast));
        } catch (e) {
          emit(ForecastError(message: e.toString()));
        }
      });


    void init() {
      add(ForecastEventGetForecastByLocation(lat: 0, lon: 0));
    }

    init();

  }
}
