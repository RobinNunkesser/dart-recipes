import 'package:common_ui/common_ui.dart';
import 'package:flutter/material.dart';

class SearchListPage extends StatefulWidget {
  SearchListPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _SearchListPageState createState() => _SearchListPageState();
}

final items = [
  ListItem(title: "Title 1", subtitle: "Subtitle 1"),
  ListItem(title: "Title 2", subtitle: "Subtitle 2"),
  ListItem(title: "Title 3", subtitle: "Subtitle 3")
];

class _SearchListPageState extends State<SearchListPage> {
  var _searchview = TextEditingController();
  List<ListItem> filteredItems = items;

  _SearchListPageState() {
    _searchview.addListener(() {
      setState(() {
        if (_searchview.text.isEmpty) {
          filteredItems = items;
        } else {
          var searchTerm = _searchview.text.toLowerCase();
          filteredItems = items
              .where((item) => item.title.toLowerCase().contains(searchTerm))
              .toList();
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: SafeArea(
            child: Column(children: <Widget>[
          Material(
            child: TextField(
              controller: _searchview,
              decoration: InputDecoration(
                hintText: "Search",
                hintStyle: TextStyle(color: Colors.grey[300]),
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Flexible(
            child: ListView.builder(
                itemCount: filteredItems.length,
                itemBuilder: (context, index) => ListTile(
                      title: Text(filteredItems[index].title),
                      subtitle: Text(filteredItems[index].subtitle!),
                    )),
          ),
        ])));
  }
}
