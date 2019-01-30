import 'package:flutter/material.dart';
import 'package:webview/webview.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WebView Demo',
      home: MyHomePage(),
    );
  }
}
