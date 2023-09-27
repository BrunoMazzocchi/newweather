import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newweather/domain/repository/forecast_repository.dart';
import 'package:newweather/infraestructure/datasource/forecast_datasource_impl.dart';
import 'package:newweather/infraestructure/repository/forecast_repository_impl.dart';

class RepositoryWrapper extends StatelessWidget {
  final Widget child;
  const RepositoryWrapper({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(providers: [
      RepositoryProvider<ForecastRepository>(
        create: (context) => ForecastRepositoryImpl(
          datasource: ForecastDatasourceImpl(
            apiClient: context.read(),
          ),
        ),
      ),
    ], child: child);
  }
}
