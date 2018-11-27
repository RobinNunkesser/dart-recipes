import 'package:flutter/material.dart';
import 'platform_app.dart';
import 'my_home_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PlatformApp(
      title: 'List Recipe',
      home: MyHomePage(title: 'List Recipe'),
    );
  }
}
