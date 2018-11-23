import 'package:flutter/material.dart';
import 'platform_app.dart';
import 'my_home_page.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return PlatformApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

