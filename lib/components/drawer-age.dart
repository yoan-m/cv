import 'package:cv/components/drawer-icon.dart';
import 'package:flutter/material.dart';

class DrawerAgeWidget extends StatelessWidget {
  const DrawerAgeWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var bday = new DateTime.utc(1987, DateTime.december, 16);
    var now = new DateTime.now();
    Duration difference = now.difference(bday);
    return DrawerIconWidget(
      icon: Icons.event,
      title: (difference.inDays / 365).floor().toString() + ' ans',
    );
  }
}
