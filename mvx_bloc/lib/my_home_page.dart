import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mvx_bloc/user.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => UserCubit(),
      child: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(
          child: BlocBuilder<UserCubit, User>(
            builder: (context, state) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextField(
                    onChanged: (text) {
                      context.read<UserCubit>().forename = text;
                    },
                    decoration: InputDecoration(
                      hintText: "forename",
                      hintStyle: TextStyle(color: Colors.grey[300]),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  TextField(
                    onChanged: (text) {
                      context.read<UserCubit>().surname = text;
                    },
                    decoration: InputDecoration(
                      hintText: "surname",
                      hintStyle: TextStyle(color: Colors.grey[300]),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(state.forename),
                  Text(state.surname),
                  Text(state.greeting),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
