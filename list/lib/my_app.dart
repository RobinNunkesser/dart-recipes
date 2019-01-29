import 'package:flutter/material.dart';
import 'package:list/list.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PlatformApp(
      title: 'List Recipe',
      home: SearchListPage(title: 'List Recipe'),//MyHomePage(title: 'List Recipe'),
    );
  }
}
