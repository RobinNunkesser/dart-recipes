import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_multiple_streams/mock_sensor.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Future Provider"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            children: [
              Consumer<SensorValueA>(
                builder: (context, SensorValueA value, child) {
                  return Text('${value.value}');
                },
              ),
              Consumer<ThrottledSensorValueA>(
                builder: (context, ThrottledSensorValueA value, child) {
                  return Text('${value.value}');
                },
              ),
              Consumer<SensorValueB>(
                builder: (context, SensorValueB value, child) {
                  return Text('${value.value}');
                },
              ),
              Consumer<ThrottledSensorValueB>(
                builder: (context, ThrottledSensorValueB value, child) {
                  return Text('${value.value}');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
