import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'item.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _items = [Item(title: "Title 1",subtitle: "Subtitle 1"),
  Item(title: "Title 2",subtitle: "Subtitle 2"),
  Item(title: "Title 3",subtitle: "Subtitle 3")];

  Widget buildListTile(BuildContext context, Item item) {
    return MergeSemantics(
      child: ListTile(
        title: Text(item.title),
        subtitle: Text(item.subtitle),
        dense: false,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    return PlatformScaffold(
      appBar: PlatformAppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
          itemCount: _items.length,
          itemBuilder: (context, index) => buildListTile(context,_items[index])
      ),
    );
  }
}
