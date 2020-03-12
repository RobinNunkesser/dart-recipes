import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:list/list.dart';

class SearchListPage extends StatefulWidget {
  SearchListPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _SearchListPageState createState() => _SearchListPageState();
}

class _SearchListPageState extends State<SearchListPage> {
  var _searchview = TextEditingController();
  List<Item> filteredItems = items;

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
                itemBuilder: (context, index) =>
                    ListTile(
                      title: Text(filteredItems[index].title),
                      subtitle: Text(filteredItems[index].subtitle),
                    )),
          ),
        ])));
  }
}
