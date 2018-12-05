import 'package:flutter/material.dart';
import 'response_entity.dart';
import 'response.dart';
import 'input_boundary.dart';
import 'interactor.dart';
import 'output_boundary.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> implements OutputBoundary {
  InputBoundary inputBoundary = Interactor();
  ResponseEntity _response;

  @override
  void initState() {
    super.initState();
    inputBoundary.send(outputBoundary: this);
  }

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
            Text('Response:'),
            Text(_response.toString()),
          ],
        ),
      ),
    );
  }

  @override
  receive({Response response}) {
    if (response is Success) {
      setState(() {
        _response = response.value;
      });
    } else if (response is Failure){
      displayError(context, (response).error);
    }
  }

  Future<void> displayError(BuildContext context, Exception e) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Fehler'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text(e.toString()),
              ],
            ),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
