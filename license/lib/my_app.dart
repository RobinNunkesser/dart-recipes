import 'package:flutter/material.dart';
import 'my_home_page.dart';

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'License Recipe',
      home: MyHomePage(title: 'License Recipe Home Page'),
    );
  }
}