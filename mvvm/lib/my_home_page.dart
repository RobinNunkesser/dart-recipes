import 'package:flutter/material.dart';
import 'mvvm.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  UserViewModel _viewModel;

  @override
  void initState() {
    _viewModel = UserViewModel();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MVVM"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              onChanged: (text) {
                _viewModel.forename = text;
              },
              decoration: InputDecoration(
                hintText: "forename",
                hintStyle: TextStyle(color: Colors.grey[300]),
              ),
              textAlign: TextAlign.center,
            ),
            TextField(
              onChanged: (text) {
                _viewModel.surname = text;
              },
              decoration: InputDecoration(
                hintText: "surname",
                hintStyle: TextStyle(color: Colors.grey[300]),
              ),
              textAlign: TextAlign.center,
            ),
            StreamBuilder<String>(
              stream: _viewModel.forenameStream,
              initialData: "",
              builder: (context, snapshot) => Text(snapshot.data),
            ),
            StreamBuilder<String>(
              stream: _viewModel.surnameStream,
              initialData: "",
              builder: (context, snapshot) => Text(snapshot.data),
            ),
            StreamBuilder<String>(
              stream: _viewModel.greetingStream,
              initialData: "",
              builder: (context, snapshot) => Text(snapshot.data),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _viewModel.dispose();
    super.dispose();
  }
}
