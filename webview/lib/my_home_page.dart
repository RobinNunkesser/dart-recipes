import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:webview/web_view_page.dart';

class MyHomePage extends StatelessWidget {
  final Future<String> _localHTML = rootBundle.loadString('assets/local.html');

  void openWebViewPage(BuildContext context, String title, String initialUrl) {
    Navigator.push(
        context,
        MaterialPageRoute<void>(
            builder: (BuildContext context) => WebViewPage(
              title: title,
              initialUrl: initialUrl,
            )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WebView Demo'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            ElevatedButton(
              child: Text('Standard WebView'),
              onPressed: () => openWebViewPage(
                  context, 'Standard WebView', "https://www.google.com"),
            ),
            FutureBuilder<String>(
                future: _localHTML,
                builder:
                    (BuildContext context, AsyncSnapshot<String> snapshot) {
                  switch (snapshot.connectionState) {
                    case ConnectionState.waiting:
                      return const CircularProgressIndicator();
                    default:
                      return ElevatedButton(
                        child: Text('Local WebView'),
                        onPressed: () => openWebViewPage(
                            context,
                            'Local WebView',
                            Uri.dataFromString(snapshot.data,
                                mimeType: 'text/html')
                                .toString()),
                      );
                  }
                }),
          ],
        ),
      ),
    );
  }
}
