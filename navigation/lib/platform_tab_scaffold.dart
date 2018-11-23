import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';// hide PlatformNavBar;

class PlatformTabScaffold extends PlatformWidgetBase<CupertinoTabScaffold, Scaffold> {
  final Widget child;
  final List<BottomNavigationBarItem> items;
  final List<Widget> tabs;
  final int currentIndex;
  final ValueChanged<int> itemChanged;

  PlatformTabScaffold({this.child, this.items, this.tabs, this.currentIndex, this.itemChanged});

  @override
  Scaffold createAndroidWidget(BuildContext context) {
    var bottomNavigationBar = BottomNavigationBar(
        items: items,
        currentIndex: currentIndex,
        onTap: itemChanged,
        type: BottomNavigationBarType.fixed,
    );

    var bottomAppBar = BottomAppBar(
      child: bottomNavigationBar,
    );

    return Scaffold(
      body: child,
      bottomNavigationBar: bottomAppBar,
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
