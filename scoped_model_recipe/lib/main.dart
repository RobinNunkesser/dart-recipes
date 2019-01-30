import 'package:flutter/material.dart';
import 'package:scoped_model_recipe/scoped_model_recipe.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: CounterHome('Scoped Model Demo'),
    );
  }
}

