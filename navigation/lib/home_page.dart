import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'platform_tab_scaffold.dart';

class HomePage extends StatelessWidget {
  HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return PlatformScaffold(
      appBar: PlatformAppBar(
        title: Text("Home Page"),
      ),
      body: Center(
        child: Text('Hello from home page.'),
      ),
      bottomNavBar: PlatformTabScaffold.platformNavBar,
    );
  }
}
