import 'package:minimal_clean_arch/minimal_clean_arch.dart';
import 'package:basic_clean_arch/basic_clean_arch.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> implements Displayer<String> {
  String _result = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              onPressed: () => MinimalInteractor().execute(displayer: this),
              child: Text('Start'),
            ),
            Text(
              '$_result'
            ),
          ],
        ),
      ),
    );
  }

  @override
  void display({Future<String> result}) {
    result.then((value) => setState(() => _result = value));
  }
}
