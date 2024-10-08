import 'package:flutter/material.dart';

class PageTitleWidget extends StatelessWidget {
  final String title;
  final IconData icon;
  const PageTitleWidget({super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Row(children: [
        Padding(
          padding: EdgeInsets.only(right: 5),
          child: Icon(
            this.icon,
            size: 16,
          ),
        ),
        Text(
          this.title,
          style: Theme.of(context).textTheme.displaySmall,
        ),
      ]),
      Divider()
    ]);
  }
}
