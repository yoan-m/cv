import 'package:flutter/material.dart';

class DrawerSubTileWidget extends StatelessWidget {
  final String title;

  const DrawerSubTileWidget({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Text(
              this.title,
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
        ],
      ),
    );
  }
}
