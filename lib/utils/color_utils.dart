library colorutils;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final materialThemeData = ThemeData(
    primarySwatch: Colors.indigo,
    scaffoldBackgroundColor: Colors.white,
    accentColor: Colors.indigo,
    appBarTheme: AppBarTheme(color: Colors.indigo),
    primaryColor: Colors.indigo,
    secondaryHeaderColor: Colors.indigo,
    canvasColor: Colors.indigo,
    backgroundColor: Colors.teal,
    textTheme: TextTheme().copyWith(body1: TextTheme().body1));

final cupertinoTheme = CupertinoThemeData(
    primaryColor: Colors.indigo,
    barBackgroundColor: Colors.indigo,
    scaffoldBackgroundColor: Colors.white);

final toolbarTextStyle = TextStyle(color: Colors.white, fontSize: 16.0);
final textStyleBlackPlain = TextStyle(color: Colors.black, fontSize: 30);