import 'package:drawer_navigation/drawer_navigation.dart';
import 'package:flutter/material.dart';

class MessagesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        child: Text('Push to subpage'),
        onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SecondLevelPage(value: "Hello!"),
            )));
  }
}
