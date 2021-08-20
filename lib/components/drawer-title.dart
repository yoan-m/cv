import 'package:flutter/material.dart';

class DrawerTileWidget extends StatelessWidget {
  final String title;

  const DrawerTileWidget({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Text(
              this.title,
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
        ],
      ),
    );
  }
}
