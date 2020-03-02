import 'package:flutter/material.dart';

class SecondLevelPage extends StatelessWidget {
  SecondLevelPage({Key key, this.value}) : super(key: key);

  final String value;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second level"),
      ),
      body: Text('$value'),
    );
  }
}
