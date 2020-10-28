import 'package:flutter/material.dart';
import 'package:list/grouped_list_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'List Recipe',
      home: GroupedListPage(
          title: 'List Recipe'), //SearchListPage(title: 'List Recipe'),
    );
  }
}
