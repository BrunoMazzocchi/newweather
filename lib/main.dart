import 'package:flutter/material.dart';
import 'package:newweather/app.dart';
import 'package:newweather/util/api/api_constants.dart';
import 'package:newweather/util/bloc_wrapper.dart';
import 'package:newweather/util/data_provider.dart';
import 'package:newweather/util/repository_wrapper.dart';

void main() {
  runApp(
   const  DataProvider(
      baseUrl: ApiConstants.baseUrl,
      child: RepositoryWrapper(
        child: BlocWrapper(
          child: App(),
        ),
      ),
    ),
  );
}