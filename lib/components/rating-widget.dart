import 'package:flutter/material.dart';

class RatingWidget extends StatelessWidget {
  final int rate;
  final String label;

  const RatingWidget({super.key, required this.label, required this.rate});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Text(this.label)),
        this.rate < 1 ? EmptyDotWidget() : FullDotWidget(),
        this.rate < 2 ? EmptyDotWidget() : FullDotWidget(),
        this.rate < 3 ? EmptyDotWidget() : FullDotWidget(),
        this.rate >= 4 ? FullDotWidget() : EmptyDotWidget(),
      ],
    );
  }
}

class FullDotWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.circle,
      size: 15,
    );
  }
}

class EmptyDotWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.lens_outlined,
      size: 15,
    );
  }
}
