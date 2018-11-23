import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class BookPage extends StatelessWidget {
  BookPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
      appBar: PlatformAppBar(
        title: Text("Book Page"),
      ),
      body: Center(
        child: Text('Hello from book page.'),
      ),
    );
  }
}
