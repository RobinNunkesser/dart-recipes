import 'package:flutter/material.dart';
import 'package:list/list.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'List Recipe',
      home: MyHomePage(
          title: 'List Recipe'), //SearchListPage(title: 'List Recipe'),
    );
  }
}
