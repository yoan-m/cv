import 'package:flutter/material.dart';

class PageHobbyWidget extends StatelessWidget {
  final String title;
  final IconData icon;

  const PageHobbyWidget({Key key, this.title, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Chip(
      backgroundColor: Colors.white,
      elevation: 6,
      label: Text(this.title),
      avatar: Icon(this.icon),
    );
  }
}
