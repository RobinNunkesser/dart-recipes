import 'package:common_ui/common_ui.dart';
import 'package:flutter/material.dart';

class DynamicListPage extends StatefulWidget {
  DynamicListPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _DynamicListPageState createState() => _DynamicListPageState();
}

class _DynamicListPageState extends State<DynamicListPage> {
  final items = [
    ListItem(title: "Title 1", subtitle: "Subtitle 1"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              setState(() {
                items.add(ListItem(title: 'New item', subtitle: 'Subtitle'));
              });
            },
            icon: Icon(Icons.add),
          ),
        ],
      ),
      body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) => ListItemTile(item: items[index])),
    );
  }
}
