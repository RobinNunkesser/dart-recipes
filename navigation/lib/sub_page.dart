import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class SubPage extends StatelessWidget {
  SubPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
      appBar: PlatformAppBar(
        title: Text("Sub Page"),
      ),
      body: Center(
        child: Text('Hello from sub page.'),
      ),
    );
  }
}
