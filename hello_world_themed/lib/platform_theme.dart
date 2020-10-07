import 'dart:io' show Platform;
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

ThemeData _androidTheme = ThemeData();
CupertinoThemeData _iOSDefaultTheme = CupertinoThemeData();
ThemeData _iOSTheme = ThemeData(
    primaryColor: Color(0xFFF9F9F9),
    canvasColor: CupertinoColors.white,
    fontFamily: '.SF UI Text',
    textTheme: TextTheme(
      bodyText2: _iOSDefaultTheme.textTheme.textStyle,
      headline6: _iOSDefaultTheme.textTheme.navTitleTextStyle,
    ));
ThemeData platformThemeData =
    Platform.isAndroid ? _androidTheme : Platform.isIOS ? _iOSTheme : null;

double appBarElevation = Platform.isAndroid ? 4.0 : 0.5;
