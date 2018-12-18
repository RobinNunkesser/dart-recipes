import 'package:scoped_model/scoped_model.dart';
import 'package:flutter/material.dart';
import 'counter_model.dart';

class CounterHome extends StatelessWidget {
  final String title;
  final CounterModel model = CounterModel();

  CounterHome(this.title);

  @override
  Widget build(BuildContext context) {
    return ScopedModel<CounterModel>(
      model: model,
      child: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('You have pushed the button this many times:'),
              ScopedModelDescendant<CounterModel>(
                builder: (context, child, model) {
                  return Text(
                    model.counter.toString(),
                    style: Theme.of(context).textTheme.display1,
                  );
                },
              ),
            ],
          ),
        ),
        floatingActionButton: ScopedModelDescendant<CounterModel>(
          builder: (context, child, model) {
            return FloatingActionButton(
              onPressed: model.increment,
              tooltip: 'Increment',
              child: Icon(Icons.add),
            );
          },
        ),
      ),
    );
  }
}
