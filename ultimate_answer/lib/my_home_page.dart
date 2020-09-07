import 'package:core/get_answer_command.dart';
import 'package:core/get_answer_command_dto.dart';
import 'package:flutter/material.dart';
import 'package:infrastructure/adapters/super_computer_adapter.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _questionTextEditingController = TextEditingController();
  var answer = "";

  var service = GetAnswerCommand(SuperComputerAdapter());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ultimate Answer"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _questionTextEditingController,
              decoration: InputDecoration(
                hintText: "Enter question",
                hintStyle: TextStyle(color: Colors.grey[300]),
              ),
              textAlign: TextAlign.center,
            ),
            MaterialButton(child: Text("Start"), onPressed: _start),
            Text(answer),
          ],
        ),
      ),
    );
  }

  void _start() {
    service
        .execute(
            inDTO: GetAnswerCommandDTO(_questionTextEditingController.text))
        .then(success)
        .catchError(failure);
  }

  void success(String value) {
    setState(() => answer = value);
  }

  void failure(Exception error) {
    setState(() => answer = error.toString());
  }
}
