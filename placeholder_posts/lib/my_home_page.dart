import 'package:core/get_post_command.dart';
import 'package:core/get_post_command_dto.dart';
import 'package:flutter/material.dart';
import 'package:infrastructure/adapters/post_repository_adapter.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _idTextEditingController = TextEditingController();
  var result = "";

  var service = GetPostCommand(PostRepositoryAdapter());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Placeholder Posts"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _idTextEditingController,
              decoration: InputDecoration(
                hintText: "Enter id",
                hintStyle: TextStyle(color: Colors.grey[300]),
              ),
              textAlign: TextAlign.center,
            ),
            MaterialButton(child: Text("Start"), onPressed: _start),
            Text(result),
          ],
        ),
      ),
    );
  }

  void _start() {
    service
        .execute(
            inDTO: GetPostCommandDTO(id: int.parse(_idTextEditingController.text)))
        .then(success)
        .catchError((error) => failure(error));
  }

  void success(String value) {
    setState(() => result = value);
  }

  void failure(Exception error) {
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
