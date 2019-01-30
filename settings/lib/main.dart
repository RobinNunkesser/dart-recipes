import 'package:flutter/material.dart';
import 'package:settings/settings.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SharedPreferences Demo',
      home: MyHomePage(title: 'SharedPreferences Demo'),
    );
  }
}