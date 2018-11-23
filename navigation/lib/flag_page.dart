import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'sub_page.dart';

class FlagPage extends StatelessWidget {
  FlagPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
      appBar: PlatformAppBar(
        title: Text("Flag Page"),
      ),
      body: Center(
        child: PlatformButton(
          child: Text('Display Sub Page'),
          onPressed: () {
          Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SubPage()),
        );
          },
        ),
      ),
    );
  }
}
