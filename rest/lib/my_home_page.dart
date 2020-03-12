import 'package:basic_clean_arch/basic_clean_arch.dart';
import 'package:flutter/material.dart';
import 'package:rest/rest.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    implements Displayer<String> {
  UseCase interactor = GetHttpRequestInteractor();
  HttpRequestViewModel _viewModel;

  @override
  void initState() {
    _viewModel = HttpRequestViewModel();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    interactor.execute(displayer: this);

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Response:'),
            StreamBuilder<String>(
              stream: _viewModel.resultStream,
              initialData: "Loading...",
              builder: (context, snapshot) {
                return Text(snapshot.data);
              },
            ),
          ],
          ),
        ),
    );
  }

  @override
  void display({String result, resultCode = 0}) {
    _viewModel.result = result;
  }

  @override
  void displayError(Exception error) {
    showError(context, error);
  }

  Future<void> showError(BuildContext context, Exception e) async {
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
