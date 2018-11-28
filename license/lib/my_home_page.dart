import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      url: new Uri.dataFromString(
              '<html>'
              '<body>'
              '<h1>License HTML</h1>'
              '</body>'
              '</html>',
              mimeType: 'text/html')
          .toString(),
    );
  }
}