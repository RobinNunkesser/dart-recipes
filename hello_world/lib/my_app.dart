import 'package:flutter/material.dart';
import 'package:hello_world/hello_world.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PlatformApp(
      title: 'Hello World Demo',
      home: MyHomePage(title: 'Hello World Demo'),
    );
  }
}
