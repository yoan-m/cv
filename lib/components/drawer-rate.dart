import 'package:cv/components/rating-widget.dart';
import 'package:flutter/material.dart';

class DrawerRateWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final int rate;

  const DrawerRateWidget({Key key, this.title, this.rate, this.subtitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: RatingWidget(
                label: this.title,
                rate: this.rate,
              ),
            ),
          ],
        ),
        this.subtitle.isNotEmpty
            ? Text(
                this.subtitle,
                style: Theme.of(context).textTheme.headline5,
              )
            : Container()
      ]),
    );
  }
}
