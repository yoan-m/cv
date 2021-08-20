import 'package:flutter/material.dart';

class PageTitleWidget extends StatelessWidget {
  final String title;

  const PageTitleWidget({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [Text(this.title, style: Theme.of(context).textTheme.headline3,), Divider()],
    );
  }
}
