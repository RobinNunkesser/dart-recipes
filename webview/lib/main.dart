import 'package:flutter/material.dart';
import 'my_home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WebView Demo',
      home: MyHomePage(title: 'WebView Demo'),
    );
  }
}
