import 'package:flutter/material.dart';
import 'package:launch_url/launch_url.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'URL launcher',
      home: MyHomePage(title: 'URL launcher'),
    );
  }
}

