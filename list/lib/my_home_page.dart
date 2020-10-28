import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'item.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              setState(() {
                items.add(Item(title: 'New item', subtitle: 'Subtitle'));
              });
            },
            icon: Icon(Icons.add),
          ),
        ],
      ),
      body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) => ListTile(
            leading: Icon(Icons.info),
                title: Text(items[index].title),
                subtitle: Text(items[index].subtitle),
              )),
    );
  }
}
