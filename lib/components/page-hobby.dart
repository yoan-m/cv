import 'package:flutter/material.dart';

class PageHobbyWidget extends StatelessWidget {
  final String title;
  final IconData icon;

  const PageHobbyWidget({super.key, required this.title, required this.icon});

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
