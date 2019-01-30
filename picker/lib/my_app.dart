import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:picker/picker.dart';

class MyApp extends StatelessWidget {
  final _material = true;

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
