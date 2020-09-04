import 'package:flutter/material.dart';
import 'package:hello_world_custom/hello_world_custom.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        errorColor: Colors.transparent,

        fontFamily: "Quicksand"
      ),
      home: MyHomePage(title: 'Hello World Demo'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AAppBar(
        title: title,
      ),
      body: Center(
        child: Text("Hello World"),
      ),
    );
  }
}
