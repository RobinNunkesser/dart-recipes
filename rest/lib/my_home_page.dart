import 'package:flutter/material.dart';
import 'input_boundary.dart';
import 'interactor.dart';
import 'output_boundary.dart';
import 'response_view_model.dart';
import 'package:scoped_model/scoped_model.dart';
import 'response_entity.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> implements OutputBoundary<ResponseEntity> {

  InputBoundary inputBoundary = Interactor();
  final ResponseViewModel model = ResponseViewModel();

  @override
  Widget build(BuildContext context) {
    inputBoundary.send(outputBoundary: this);

    return ScopedModel<ResponseViewModel>(
      model: model,
      child: Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Response:'),
            ScopedModelDescendant<ResponseViewModel>(
              builder: (context,child,model) => Text(model.description),
            ),
          ],
        ),
      ),
    ),
    )
    ;
  }

  @override
  receive({Future<ResponseEntity> response}) {
    response
        .then((value) => model.description = value.toString())
        .catchError((error) => displayError(context, error));
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
