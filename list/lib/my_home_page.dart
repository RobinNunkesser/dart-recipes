import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

import 'item.dart';
import 'platform_list_tile.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
      appBar: PlatformAppBar(
        title: Text(widget.title),
        trailingActions: <Widget>[
          PlatformIconButton(
            onPressed: () {
              setState(() {
                items.add(Item(title:'New item',subtitle: 'Subtitle'));
              });
            },
            iosIcon: Icon(
              CupertinoIcons.add,
              size: 28.0,
            ),
            androidIcon: Icon(Icons.add),
          ),
        ],

      ),
      body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) => PlatformListTile(
                title: items[index].title,
                subtitle: items[index].subtitle,
              )),
    );
  }
}
