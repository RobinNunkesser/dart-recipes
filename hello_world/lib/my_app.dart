import 'package:flutter/material.dart';
import 'package:hello_world/platform_app.dart';
import 'package:hello_world/my_home_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new PlatformApp(
      title: 'Hello World Demo',
      home: new MyHomePage(title: 'Hello World Demo'),
    );
  }
}
