import 'package:stream_transform/stream_transform.dart';

class MockSensor {
  MockSensor(
      {this.frequencyA = 1.0,
      this.frequencyB = 1.0,
      this.throttlingFrequency = 1.0});

  final double frequencyA;
  final double frequencyB;
  final double throttlingFrequency;

  Stream<SensorValueA> get sensorA async* {
    var i = 0;
    while (true) {
      await Future.delayed(Duration(milliseconds: (1000 / frequencyA).ceil()),
          () {
        i = (i + 1) % 100;
      });
      yield SensorValueA(i);
    }
  }

  Stream<ThrottledSensorValueA> get throttledSensorA => sensorA
      .throttle(Duration(milliseconds: (1000 / throttlingFrequency).ceil()),
          trailing: true)
      .map((event) => ThrottledSensorValueA(event.value));

  Stream<SensorValueB> get sensorB async* {
    var i = 0;
    while (true) {
      await Future.delayed(Duration(milliseconds: (1000 / frequencyB).ceil()),
          () {
        i = (i + 1) % 100;
      });
      yield SensorValueB(i);
    }
  }

  Stream<ThrottledSensorValueB> get throttledSensorB => sensorB
      .throttle(Duration(milliseconds: (1000 / throttlingFrequency).ceil()),
          trailing: true)
      .map((event) => ThrottledSensorValueB(event.value));
}

abstract class SensorValue {
  SensorValue(this.value);
  int value;
}

class SensorValueA extends SensorValue {
  SensorValueA(value) : super(value);
}

class ThrottledSensorValueA extends SensorValue {
  ThrottledSensorValueA(value) : super(value);
}

class SensorValueB extends SensorValue {
  SensorValueB(value) : super(value);
}

class ThrottledSensorValueB extends SensorValue {
  ThrottledSensorValueB(value) : super(value);
}
