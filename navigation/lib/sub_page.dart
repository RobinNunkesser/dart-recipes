import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'platform_tab_scaffold.dart';

class SubPage extends StatelessWidget {
  SubPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
      appBar: PlatformAppBar(
        title: Text("Sub Page"),
      ),
      body: Center(
        child: Text('Hello from sub page.'),
      ),
      bottomNavBar: PlatformTabScaffold.platformNavBar,
    );
  }
}
