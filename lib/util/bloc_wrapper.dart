import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newweather/presentation/bloc/forecast_bloc.dart';

class BlocWrapper extends StatelessWidget {
  final Widget child;
  const BlocWrapper({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
       BlocProvider<ForecastBloc>(
         create: (context) => ForecastBloc(
          repository: context.read(), 
         ),
       ),
    
    ], child: child);
  }
}
