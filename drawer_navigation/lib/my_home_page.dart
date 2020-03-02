import 'package:drawer_navigation/drawer_navigation.dart';
import 'package:flutter/material.dart';

enum Screen { messages, profile, settings }

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _currentScreen = Screen.messages;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Drawer Demo'),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text(
                  'Drawer Header',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.message),
                title: Text('Messages'),
                onTap: () {
                  setState(() {
                    _currentScreen = Screen.messages;
                  });
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text('Profile'),
                onTap: () {
                  setState(() {
                    _currentScreen = Screen.profile;
                  });
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
                onTap: () {
                  setState(() {
                    _currentScreen = Screen.settings;
                  });
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        body: body());
  }

  Widget body() {
    switch (_currentScreen) {
      case Screen.messages:
        return MessagesPage();
      case Screen.profile:
        return ProfilePage();
      case Screen.settings:
        return SettingsPage();
    }
  }
}
