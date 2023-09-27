import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newweather/presentation/bloc/forecast_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue,
   
        body: SafeArea(
          child: BlocBuilder<ForecastBloc, ForecastState>(
            builder: (context, state) {
        
              if (state is ForecastLoading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
        
              if (state is ForecastError) {
                return Center(
                  child: Text(state.message),
                );
              }
        
              if (state is ForecastLoaded) {
                return SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(state.forecast.currentWeather.temperature.toString()),
                        Text(state.forecast.currentWeather.time.toString()),
                        Text(state.forecast.currentWeather.weatherCode.toString()),
                      ],
                    ),
                  ),
                );
              }
        
              return Container();
            },
          ),
        ));
  }
}
