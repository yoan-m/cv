import 'package:flutter/material.dart';

ThemeData theme = ThemeData(
  primarySwatch: Colors.indigo,
  textTheme: TextTheme(
    headline1: TextStyle(fontSize: 12),
    headline2: TextStyle(fontSize: 24),
    headline3: TextStyle(fontSize: 16, color: Colors.blue.shade900),
    headline4: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
    headline5: TextStyle(fontSize: 12, color: Colors.grey),
    headline6: TextStyle(fontSize: 14, color: Colors.blue.shade900),
    caption: TextStyle(fontSize: 12),
    overline: TextStyle(fontSize: 12),
    button: TextStyle(fontSize: 12),
    subtitle1: TextStyle(fontSize: 11), //TileTitle
    subtitle2: TextStyle(fontSize: 12),
    bodyText1: TextStyle(fontSize: 12),
    bodyText2: TextStyle(fontSize: 12),
  ),
  visualDensity: VisualDensity.compact,
);
