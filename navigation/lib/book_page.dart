import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'platform_tab_scaffold.dart';

class BookPage extends StatelessWidget {
  BookPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
      appBar: PlatformAppBar(
        title: Text("Book Page"),
      ),
      body: Center(
        child: Text('Hello from book page.'),
      ),
      bottomNavBar: PlatformTabScaffold.platformNavBar,
    );
  }
}
