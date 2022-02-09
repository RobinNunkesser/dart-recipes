import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_multiple_streams/mock_sensor.dart';

import 'my_app.dart';

var mockSensor =
    MockSensor(frequencyA: 500, frequencyB: 30, throttlingFrequency: 5);

void main() {
  runApp(MultiProvider(
    providers: [
      StreamProvider<SensorValueA>(
          create: (_) => mockSensor.sensorA,
          initialData: SensorValueA(0),
          catchError: (_, error) => SensorValueA(0)),
      StreamProvider<ThrottledSensorValueA>(
          create: (_) => mockSensor.throttledSensorA,
          initialData: ThrottledSensorValueA(0),
          catchError: (_, error) => ThrottledSensorValueA(0)),
      StreamProvider<SensorValueB>(
          create: (_) => mockSensor.sensorB,
          initialData: SensorValueB(0),
          catchError: (_, error) => SensorValueB(0)),
      StreamProvider<ThrottledSensorValueB>(
          create: (_) => mockSensor.throttledSensorB,
          initialData: ThrottledSensorValueB(0),
          catchError: (_, error) => ThrottledSensorValueB(0)),
    ],
    child: const MyApp(),
  ));
}
