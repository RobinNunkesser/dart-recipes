import 'package:flutter/material.dart';

class MyMaterialHomePage extends StatefulWidget {
  MyMaterialHomePage({Key key}) : super(key: key);

  @override
  _MyMaterialHomePageState createState() => _MyMaterialHomePageState();
}

class _MyMaterialHomePageState extends State<MyMaterialHomePage> {
  final List<String> _allActivities = <String>['Entry 1', 'Entry 2', 'Entry 3'];
  int _selectedIndex = 2;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Picker Demo'),
      ),
      body: InputDecorator(
        decoration: InputDecoration(
          labelText: 'Please choose',
        ),
        isEmpty: false,
        child: DropdownButton<String>(
          value: _allActivities[_selectedIndex],
          items: _allActivities.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
          onChanged: (String newValue) {
            setState(() => _selectedIndex = _allActivities.indexOf(newValue));
          },
        ),
      ),
    );
  }
}
