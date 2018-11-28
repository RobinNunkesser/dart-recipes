import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  void initState() {
    super.initState();
  }

  void call() {
    print('Synchronous start');
    print('Asynchronous call');
    asyncMethod();
    print('Synchronous end');
  }

  void asyncMethod() async {
    int value = await asyncMethodWithReturn();
    print('Asynchronous return $value');
  }

  Future<int> asyncMethodWithReturn() async {
    await Future.delayed(Duration(seconds: 4),() {});
    return 42;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () => call(),
          child: Text("Call"),
        ),
      ),
    );
  }
}
