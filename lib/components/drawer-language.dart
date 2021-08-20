import 'package:flutter/material.dart';

class DrawerLanguageWidget extends StatelessWidget {
  final String title;
  final String level;

  const DrawerLanguageWidget({Key key, this.title, this.level})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Text(
              this.title,
            ),
          ),
          Expanded(
            flex: 1,
            child: Text(
              this.level,
            ),
          ),
        ],
      ),
    );
  }
}
