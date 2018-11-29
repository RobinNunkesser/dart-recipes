import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'response_entity.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  ResponseEntity _response;

  Future<Null> fetchData() async {
    final response = await http.get('https://httpbin.org/get');
    final responseJson = json.decode(response.body);

    setState(() {
      _response = ResponseEntity.fromJson(responseJson);
    });
  }

  @override
  void initState() {
    super.initState();
    fetchData();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Response:'),
            Text(_response?.toString()),// == null ? '' : ''),
          ],
        ),
      ),
    );
  }
}
