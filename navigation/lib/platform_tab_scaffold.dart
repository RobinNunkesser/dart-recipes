import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';// hide PlatformNavBar;

class PlatformTabScaffold extends PlatformWidgetBase<CupertinoTabScaffold, Scaffold> {
  final Widget child;
  final List<BottomNavigationBarItem> items;
  final List<Widget> tabs;

  PlatformTabScaffold({this.child, this.items, this.tabs});

  @override
  Scaffold createAndroidWidget(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('Test'),
      ),
      body: child,
      bottomNavigationBar: null,//tabBar.createAndroidWidget(context),
    );
  }

  @override
  CupertinoTabScaffold createIosWidget(BuildContext context) {
    var tabBar = CupertinoTabBar(
      items: items,
    );

    return CupertinoTabScaffold(
      tabBar: tabBar,
      tabBuilder: (BuildContext context, int index) {
        return CupertinoTabView(builder: (BuildContext context) {
          return tabs[index];
        });
      },
    );
  }
}
