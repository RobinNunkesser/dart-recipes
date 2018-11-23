import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'platform_tab_scaffold.dart';

class PhonePage extends StatelessWidget {
  PhonePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
      appBar: PlatformAppBar(
        title: Text("Phone Page"),
      ),
      body: Center(
        child: Text('Hello from phone page.'),
      ),
      bottomNavBar: PlatformTabScaffold.platformNavBar,
    );
  }
}
