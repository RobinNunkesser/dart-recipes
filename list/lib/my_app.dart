import 'package:flutter/material.dart';
import 'package:list/list.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'List Recipe',
      home:
          //StaticListPage(),
          //DynamicListPage(title: 'Dynamic list'),
          //GroupedListPage(),
          SearchListPage(title: 'List Recipe'),
    );
  }
}
