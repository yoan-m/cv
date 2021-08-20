import 'package:flutter/material.dart';

class DrawerDiplomaWidget extends StatelessWidget {
  final String title;
  final String year;

  const DrawerDiplomaWidget({Key key, this.title, this.year}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: Text(this.title),
            ),
            Text(
              this.year,
              style: Theme.of(context).textTheme.headline5,
            )
          ],
        ),
      ]),
    );
  }
}
