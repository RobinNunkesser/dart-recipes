import 'package:flutter/material.dart';
import 'web_view_page.dart';
import 'package:flutter/services.dart' show rootBundle;

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key}) : super(key: key);

  final Future<String> _localHTML = rootBundle.loadString('assets/local.html');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WebView Demo'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text('Standard WebView'),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                        builder: (BuildContext context) => WebViewPage(
                              title: 'Standard WebView',
                              initialUrl: "https://www.google.com",
                            )));
              },
            ),
            FutureBuilder<String>(
                future: _localHTML,
                builder:
                    (BuildContext context, AsyncSnapshot<String> snapshot) {
                  switch (snapshot.connectionState) {
                    case ConnectionState.waiting:
                      return const CircularProgressIndicator();
                    default:
                      if (snapshot.hasError)
                        return Text('Error: ${snapshot.error}');
                      else
                        return RaisedButton(
                          child: Text('Local WebView'),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute<void>(
                                    builder: (BuildContext context) =>
                                        WebViewPage(
                                          title: 'Local WebView',
                                          initialUrl: Uri.dataFromString(
                                                  snapshot.data,
                                                  mimeType: 'text/html')
                                              .toString(),
                                        )));
                          },
                        );
                  }
                }),
          ],
        ),
      ),
    );
  }
}
