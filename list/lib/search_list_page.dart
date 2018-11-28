import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

import 'item.dart';
import 'platform_list_tile.dart';

class SearchListPage extends StatefulWidget {
  SearchListPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _SearchListPageState createState() => _SearchListPageState();
}

class _SearchListPageState extends State<SearchListPage> {
  var _searchview = TextEditingController();
  var filteredItems = items;

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
    return PlatformScaffold(
        appBar: PlatformAppBar(
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
                itemBuilder: (context, index) => PlatformListTile(
                      title: filteredItems[index].title,
                      subtitle: filteredItems[index].subtitle,
                    )),
          ),
        ])));
  }
}
