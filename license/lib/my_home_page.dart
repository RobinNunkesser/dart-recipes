import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: WebView(
        initialUrl: new Uri.dataFromString(
              '<html>'
              '<body>'
              '<h1>License HTML</h1>'
              '</body>'
              '</html>',
              mimeType: 'text/html')
          .toString(),
      ),      
    );
  }
}
