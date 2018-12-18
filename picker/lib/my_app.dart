import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'platform_app.dart';
import 'my_home_page.dart';
import 'my_material_home_page.dart';

class MyApp extends StatelessWidget {
  var _material = true;

  @override
  Widget build(BuildContext context) {
    if (_material) {
      return MaterialApp(
        title: 'Flutter Demo',
        home: MyMaterialHomePage(),
      );
    } else {
      return PlatformApp(
        title: 'Flutter Demo',
        home: MyHomePage(title: 'Picker Demo'),
      );
    }
  }
}
