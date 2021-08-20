import 'package:cv/drawer.dart';
import 'package:cv/page.dart';
import 'package:flutter/material.dart';

class SplitView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    const breakpoint = 600.0;
    if (screenWidth >= breakpoint) {
      return Scaffold(
        body: Row(
          children: [
            DrawerWidget(),
            Expanded(
              child: PageWidget(),
            ),
          ],
        ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          title: Text('Yoan MURCIANO'),
          centerTitle: true,
        ),
        body: PageWidget(),
        drawer: DrawerWidget(),
      );
    }
  }
}
