import 'package:flutter/material.dart';

class PageTrainingWidget extends StatelessWidget {
  final String title;
  final String subtitle;

  const PageTrainingWidget({Key key, this.title, this.subtitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10, left: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(this.title, style: Theme.of(context).textTheme.headline4),
          Text(
            this.subtitle,
          ),
        ],
      ),
    );
  }
}
