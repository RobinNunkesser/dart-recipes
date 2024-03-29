import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(
          child: IconButton(
            icon: Icon(Icons.info),
            onPressed: () => showAboutDialog(context: context, children: [
              Text('This is an About Dialog in Flutter'),
            ]),
          ),
        ));
  }
}
