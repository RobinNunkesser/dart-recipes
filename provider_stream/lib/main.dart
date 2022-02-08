import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_stream/person.dart';

import 'my_app.dart';

void main() {
  runApp(
    StreamProvider<String>(
      create: (_) => Person(name: 'Yohan', initialAge: 25).age,
      initialData: 25.toString(),
      catchError: (_, error) => error.toString(),
      child: const MyApp(),
    ),
  );
}
