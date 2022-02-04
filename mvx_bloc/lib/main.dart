import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'app_observer.dart';
import 'my_app.dart';

void main() {
  BlocOverrides.runZoned(
    () => runApp(const MyApp()),
    blocObserver: AppObserver(),
  );
}
