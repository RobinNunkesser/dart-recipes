import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Future<String> _localHTML;

  Future<String> loadAsset() async {
    return await rootBundle.loadString('assets/open_source_licenses.html');
  }

  @override
  void initState() {
    super.initState();
    _localHTML = loadAsset();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: FutureBuilder<String>(
          future: _localHTML,
          builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.none:
              case ConnectionState.active:
              case ConnectionState.waiting:
                return Text('Loading...');
              case ConnectionState.done:
                if (snapshot.hasError) return Text('Error: ${snapshot.error}');
                return WebView(
                  initialUrl:
                      Uri.dataFromString(snapshot.data, mimeType: 'text/html')
                          .toString(),
                );
            }
            return null;
          },
        ));
  }
}
