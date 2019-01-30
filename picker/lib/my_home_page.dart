import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:picker/picker.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<String> _allActivities = <String>['Entry 1', 'Entry 2', 'Entry 3'];
  int _selectedIndex = 2;

  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
      appBar: PlatformAppBar(
        title: Text(widget.title),
      ),
      body: PlatformPicker(
        label: 'Please choose',
        selectedIndex: _selectedIndex,
        items: _allActivities,
        onSelectedItemChanged: (int index) {
          setState(() => _selectedIndex = index);
        },
        onChanged: (String newValue) {
          setState(() {
            _selectedIndex = _allActivities.indexOf(newValue);
            //_activity = newValue;
          });
        },
      ),
    );
  }
}


