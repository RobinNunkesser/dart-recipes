import 'package:flutter/material.dart';
import 'platform_app.dart';
import 'my_home_page.dart';
import 'search_list_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PlatformApp(
      title: 'List Recipe',
      home: SearchListPage(title: 'List Recipe'),//MyHomePage(title: 'List Recipe'),
    );
  }
}
