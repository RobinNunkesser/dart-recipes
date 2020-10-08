import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:platform_theming/platform_theming.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: PlatformThemeData.light(),
      darkTheme: PlatformThemeData.dark(),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          children: [
            Row(
              children: [
                Text("h1", style: Theme.of(context).textTheme.headline1),
                Text("h2", style: Theme.of(context).textTheme.headline2),
                Text("h3", style: Theme.of(context).textTheme.headline3),
                Text("h4", style: Theme.of(context).textTheme.headline4),
                Text("h5", style: Theme.of(context).textTheme.headline5),
                Text("h6", style: Theme.of(context).textTheme.headline6),
              ],
            ),
            Row(
              children: [
                Text("b1", style: Theme.of(context).textTheme.bodyText1),
                Text("b2", style: Theme.of(context).textTheme.bodyText2),
                Text("caption", style: Theme.of(context).textTheme.caption),
                Text("s1", style: Theme.of(context).textTheme.subtitle1),
                Text("s2", style: Theme.of(context).textTheme.subtitle2),
                Text("button", style: Theme.of(context).textTheme.button),
                Text("overline", style: Theme.of(context).textTheme.overline),
              ],
            ),
            Text("navTitleTextStyle", style: CupertinoThemeData().textTheme.navTitleTextStyle),
            Text("textStyle", style: CupertinoThemeData().textTheme.textStyle),
            Text("actionTextStyle", style: CupertinoThemeData().textTheme.actionTextStyle),
            Text("dateTimePickerTextStyle", style: CupertinoThemeData().textTheme.dateTimePickerTextStyle),
            Text("navActionTextStyle", style: CupertinoThemeData().textTheme.navActionTextStyle),
            Text("navLargeTitle", style: CupertinoThemeData().textTheme.navLargeTitleTextStyle),
            Text("tabLabelTextStyle", style: CupertinoThemeData().textTheme.tabLabelTextStyle),
          ],
        )
      ),
    );
  }
}