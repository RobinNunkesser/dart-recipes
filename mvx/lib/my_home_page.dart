import 'package:flutter/material.dart';
import 'package:mvx/user.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => User(),
      child: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(
          child: Consumer<User>(
            builder: (context, user, _) => Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextField(
                  onChanged: (text) {
                    user.forename = text;
                  },
                  decoration: InputDecoration(
                    hintText: "forename",
                    hintStyle: TextStyle(color: Colors.grey[300]),
                  ),
                  textAlign: TextAlign.center,
                ),
                TextField(
                  onChanged: (text) {
                    user.surname = text;
                  },
                  decoration: InputDecoration(
                    hintText: "surname",
                    hintStyle: TextStyle(color: Colors.grey[300]),
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(user.forename),
                Text(user.surname),
                Text(user.greeting),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
