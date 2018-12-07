import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

import 'flag_page.dart';
import 'home_page.dart';
import 'book_page.dart';
import 'phone_page.dart';
import 'platform_tab_scaffold.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedTabIndex = 0;
  Widget _selectedTab;

  @override
  Widget build(BuildContext context) {
    var tabs = [FlagPage(),BookPage(),PhonePage(),HomePage()];
    _selectedTab = tabs[_selectedTabIndex];

    var items = [
      BottomNavigationBarItem(
        title: Text('Flag'),
        icon: PlatformWidget(
          ios: (_) => Icon(CupertinoIcons.flag),
          android: (_) => Icon(Icons.flag),
        ),
      ),
      BottomNavigationBarItem(
        title: Text('Book'),
        icon: PlatformWidget(
          ios: (_) => Icon(CupertinoIcons.book),
          android: (_) => Icon(Icons.book),
        ),
      ),
      BottomNavigationBarItem(
        title: Text('Phone'),
        icon: PlatformWidget(
          ios: (_) => Icon(CupertinoIcons.phone),
          android: (_) => Icon(Icons.phone),
        ),
      ),
      BottomNavigationBarItem(
        title: Text('Home'),
        icon: PlatformWidget(
          ios: (_) => Icon(CupertinoIcons.home),
          android: (_) => Icon(Icons.home),
        ),
      ),
    ];

    return PlatformTabScaffold(
      currentIndex: _selectedTabIndex,
      itemChanged: (index) => setState(
            () {
          _selectedTabIndex = index;
          _selectedTab = tabs[_selectedTabIndex];
        },
      ),
      items: items,
      tabs: tabs,
      child: _selectedTab,
    );
  }
}
