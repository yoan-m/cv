import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';

class PageExperienceWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final String technos;
  final String entreprise;
  final String dateDebut;
  final String dateFin;
  final bool perso;

  const PageExperienceWidget(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.technos,
      required this.entreprise,
      required this.dateDebut,
      required this.dateFin,
      this.perso = false});

  @override
  Widget build(BuildContext context) {
    return FixedTimeline.tileBuilder(
      theme: TimelineThemeData(
          nodePosition: 0.1, connectorTheme: ConnectorThemeData(space: 51)),
      builder: TimelineTileBuilder.connectedFromStyle(
        contentsAlign: ContentsAlign.basic,
        oppositeContentsBuilder: (context, index) => Container(
          width: 100,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(this.dateDebut, textAlign: TextAlign.center),
                Text('à'),
                Text(this.dateFin, textAlign: TextAlign.center),
                Text(
                  this.entreprise,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              ]),
        ),
        contentsBuilder: (context, index) => Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  this.title,
                  style: Theme.of(context).textTheme.displaySmall,
                ),
                Text(
                  this.subtitle,
                ),
                Text(
                  this.technos,
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              ],
            ),
          ),
        ),
        connectorStyleBuilder: (context, index) => ConnectorStyle.solidLine,
        indicatorStyleBuilder: (context, index) => IndicatorStyle.dot,
        itemCount: 1,
      ),
    );
  }
}
