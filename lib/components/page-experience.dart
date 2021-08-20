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
      {Key key,
      this.title,
      this.subtitle,
      this.technos,
      this.entreprise,
      this.dateDebut,
      this.dateFin,
      this.perso})
      : super(key: key);

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
                Text(this.dateDebut),
                Text('à'),
                Text(this.dateFin),
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
                  style: Theme.of(context).textTheme.headline3,
                ),
                Text(
                  this.subtitle,
                ),
                Text(
                  this.technos,
                  style: Theme.of(context).textTheme.headline5,
                ),
                Row(children: [
                  this.perso != null && this.perso
                      ? Icon(
                          Icons.person,
                          size: 14,
                        )
                      : Icon(
                          Icons.business,
                          size: 14,
                        ),
                  Container(
                    padding: EdgeInsets.only(left: 5),
                    //width: 80,
                    child: Text(
                      this.entreprise,
                      overflow: TextOverflow.clip,
                      style: Theme.of(context).textTheme.headline5,
                    ),
                  ),
                ]),
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
