import 'package:flutter/material.dart';
import 'package:hello_world/hello_world.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new PlatformApp(
      title: 'Hello World Demo',
      home: new MyHomePage(title: 'Hello World Demo'),
    );
  }
}
