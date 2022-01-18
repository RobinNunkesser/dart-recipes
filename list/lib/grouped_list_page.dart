import 'package:flutter/material.dart';

import 'group.dart';

class GroupedListPage extends StatefulWidget {
  GroupedListPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _GroupedListPageState createState() => _GroupedListPageState();
}

class _GroupedListPageState extends State<GroupedListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
          itemCount: groups.length,
          itemBuilder: (context, index) => ExpansionTile(
                title: Text(groups[index].title),
                children: groups[index]
                    .items
                    .map((item) => ListTile(
                          title: Text(item.title),
                          subtitle: Text(item.subtitle),
                        ))
                    .toList(),
                initiallyExpanded: true,
              )),
    );
  }
}
