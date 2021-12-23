import 'package:flutter/material.dart';

class StaticListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Static List Example'),
      ),
      body: ListView(
        children: [
          ListTile(title: Text('Title 1'), subtitle: Text('Subtitle 1')),
          ListTile(title: Text('Title 2'), subtitle: Text('Subtitle 2')),
        ],
      ),
    );
  }
}
