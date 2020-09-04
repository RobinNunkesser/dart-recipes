import 'dart:io' show Platform;
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

ThemeData _androidTheme = ThemeData();
ThemeData _iOSTheme = ThemeData(
    primaryColor: Color(0xFFF9F9F9),
    canvasColor: CupertinoColors.white,
    fontFamily: '.SF UI Text',
    textTheme: TextTheme(
      body1: TextStyle(
        fontFamily: '.SF Pro Text',
        fontSize: 17.0,
        letterSpacing: -0.38,
        color: CupertinoColors.black,
        decoration: TextDecoration.none,
      ),
      title: TextStyle(
        fontFamily: '.SF UI Text',
        fontSize: 17.0,
        fontWeight: FontWeight.w600,
        letterSpacing: -0.08,
        color: CupertinoColors.black,
      ),
    ));
ThemeData themeData =
    Platform.isAndroid ? _androidTheme : Platform.isIOS ? _iOSTheme : null;

double appBarElevation = Platform.isAndroid ? 4.0 : 0.5;
