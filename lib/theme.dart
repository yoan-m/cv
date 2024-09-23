import 'package:flutter/material.dart';

ThemeData theme = ThemeData(
  primarySwatch: Colors.indigo,
  textTheme: TextTheme(
    displayLarge: TextStyle(fontSize: 12),
    displayMedium: TextStyle(fontSize: 24),
    displaySmall: TextStyle(fontSize: 16, color: Colors.blue.shade900),
    headlineMedium: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
    headlineSmall: TextStyle(fontSize: 12, color: Colors.grey),
    titleLarge: TextStyle(fontSize: 14, color: Colors.blue.shade900),
    bodySmall: TextStyle(fontSize: 12),
    labelSmall: TextStyle(fontSize: 12),
    labelLarge: TextStyle(fontSize: 12),
    titleMedium: TextStyle(fontSize: 11), //TileTitle
    titleSmall: TextStyle(fontSize: 12),
    bodyLarge: TextStyle(fontSize: 12),
    bodyMedium: TextStyle(fontSize: 12),
  ),
  visualDensity: VisualDensity.compact,
);
