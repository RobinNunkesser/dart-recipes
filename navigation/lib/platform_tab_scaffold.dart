import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'material_tab_scaffold.dart';

class PlatformTabScaffold
    extends PlatformWidgetBase<CupertinoTabScaffold, MaterialTabScaffold> {
  final List<BottomNavigationBarItem> items;
  final List<Widget> tabs;

  PlatformTabScaffold({this.items, this.tabs});

  @override
  MaterialTabScaffold createAndroidWidget(BuildContext context) {
    return MaterialTabScaffold(
      items: items,
      tabs: tabs,
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
