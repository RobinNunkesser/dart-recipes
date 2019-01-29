import 'package:flutter/material.dart';
import 'package:hello_world/hello_world.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
      title: title,
      child: Center(
        child: Text('Hello World'),
      ),
    );
  }
}
