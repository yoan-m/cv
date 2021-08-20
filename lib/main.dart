import 'package:cv/splitview.dart';
import 'package:cv/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yoan MURCIANO',
      theme: theme,
      home: SplitView(),
    );
  }
}
