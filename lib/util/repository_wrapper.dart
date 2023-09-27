import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RepositoryWrapper extends StatelessWidget {
  final Widget child; 
  const RepositoryWrapper({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(providers: [], child: child);
  }
}