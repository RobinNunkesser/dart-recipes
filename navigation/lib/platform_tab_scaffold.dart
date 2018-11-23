import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';// hide PlatformNavBar;

class PlatformTabScaffold extends PlatformWidgetBase<CupertinoTabScaffold, Scaffold> {
  final String title;
  final Widget child;
  final PlatformNavBar tabBar;
  final IndexedWidgetBuilder tabBuilder;

  PlatformTabScaffold({this.title, this.child, this.tabBar, this.tabBuilder});

  @override
  Scaffold createAndroidWidget(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Test'),
      ),
      body: child,
      bottomNavigationBar: tabBar.createAndroidWidget(context),
    );
  }

  @override
  CupertinoTabScaffold createIosWidget(BuildContext context) {
    return new CupertinoTabScaffold(
      tabBar: tabBar.createIosWidget(context),
      tabBuilder: tabBuilder,
    );
  }

}
