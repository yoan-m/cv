import 'package:cv/components/page-experience.dart';
import 'package:cv/components/page-hobby.dart';
import 'package:cv/components/page-spacer.dart';
import 'package:cv/components/page-title.dart';
import 'package:cv/components/page-training.dart';
import 'package:flutter/material.dart';

class PageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(16, 8, 8, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(
                  child: Text(
                    'Ingénieur',
                    style: Theme.of(context).textTheme.headline2,
                  ),
                ),
                Center(
                  child: Text(
                    'Développeur Fullstack',
                    style: Theme.of(context).textTheme.headline2,
                  ),
                ),
                Padding(padding: EdgeInsets.all(20)),
                PageTitleWidget(title: 'FORMATIONS'),
                PageTrainingWidget(
                  title: 'Formation Flutter',
                  subtitle: 'Formation en ligne Flutter Révolution',
                ),
                PageTrainingWidget(
                  title: 'Formation Angular',
                  subtitle: 'Angular (v8) par Eric LEON',
                ),
                PageTrainingWidget(
                  title: 'Formation AngularJS',
                  subtitle:
                      'AngularJS (v1) + JavaScript avancé par Thierry CHATEL',
                ),
                PageTrainingWidget(
                  title: 'Ecole Supérieur d\'Informatique – SUPINFO',
                  subtitle: 'Orléans (45) - Tours (37)',
                ),
                PageTrainingWidget(
                  title:
                      'Brevet Technicien Supérieur - Informatique et Réseaux pour L’industrie et les Services',
                  subtitle: 'Lycée Grandmond - Tours(37)',
                ),
                PageTrainingWidget(
                  title: 'Baccalauréat STI Génie Electronique',
                  subtitle: 'Lycée Maurice Genevoix - Ingré(45)',
                ),
                PageSpacerWidget(),
                PageTitleWidget(title: 'EXPERIENCES'),
                PageExperienceWidget(
                  dateDebut: 'Janvier 2020',
                  dateFin: 'Aujourd\'hui',
                  title: 'LeadDev SIG',
                  entreprise: 'Systel',
                  subtitle:
                      'Développeur référent au sein d\'une équipe de 5 personnes.\nDéveloppements, conseil, veille autour de la stack SIG de l\'entreprise.',
                  technos: 'AngularJS, Java, OpenLayers',
                ),
                PageExperienceWidget(
                  dateDebut: 'Septembre 2019',
                  dateFin: 'Février 2020',
                  subtitle:
                      'Refonte du moteur de calcul d\'itinéraire existant afin d\'en faire un micro service basé sur Spring Boot & GraphHopper.',
                  entreprise: 'Systel',
                  title: 'RoutingService',
                  technos:
                      'AngularJS, Java, Spring Boot, OpenLayers, GraphHopper',
                ),
                PageExperienceWidget(
                  dateDebut: 'Septembre 2016',
                  dateFin: 'Mars 2017',
                  title: 'CIS Booster',
                  entreprise: 'SDIS17',
                  subtitle:
                      'Création d\'une application Android de gestion d\'un centre de secours.\nCréation des inventaires, pleins de carburant et tournée des hydrants.\nTravail hors ligne et reporting.',
                  technos: 'AngularJS, Ionic, CouchDB',
                  perso: true,
                ),
                PageExperienceWidget(
                  dateDebut: 'Septembre 2014',
                  dateFin: 'Décembre 2015',
                  title: 'Dynamic Cover Tool',
                  entreprise: 'Systel',
                  subtitle:
                      'Développement d\'un outil cartographique dynamique d\'analyse de couverture opérationnelle en fonction de zones de risques.',
                  technos: 'AngularJS, Java, OpenLayers, GeoServer',
                ),
                PageExperienceWidget(
                  dateDebut: 'Septembre 2014',
                  dateFin: 'Décembre 2015',
                  title: 'SitGen BMPM',
                  entreprise: 'Systel',
                  subtitle:
                      'Développement d\'un outil cartographique dédié au Bataillon des Marins-Pompiers de Marseille afin de garder une couverture opérationnelle adéquate.',
                  technos: 'AngularJS, Java, OpenLayers, GeoServer',
                ),
                PageExperienceWidget(
                  dateDebut: 'Septembre 2013',
                  dateFin: 'Décembre 2019',
                  title: 'GeoWeb',
                  entreprise: 'Systel',
                  subtitle:
                      'Portage d\'un client lourd en client web.\nRefonte & amélioration de l\'ergonomie.',
                  technos: 'AngularJS, Java, OpenLayers, GeoServer',
                ),
                PageExperienceWidget(
                  dateDebut: 'Janvier 2011',
                  dateFin: 'Aout 2013',
                  title: 'WebCIS',
                  entreprise: 'Systel',
                  subtitle:
                      'Intégration à l\'équipe de développement Web de l\'entreprise.\nDéveloppement et maintenance d\'un portail dédié à la gestion de l\'alerte au sein des centres de secours.',
                  technos: 'Flex, Java, BlazeDS, Cairngorm, GeoConcept',
                ),
                PageExperienceWidget(
                  dateDebut: 'Octobre 2010',
                  dateFin: 'Décembre 2011',
                  title: 'Datawarehouse / Intellisys',
                  entreprise: 'Systel',
                  subtitle:
                      'Création d\'un entrepot de données et développement d\'un outil de création de dashboards dynamiques.',
                  technos: 'Flex, Java, BlazeDS, Cairngorm, MySQL, Talend',
                ),
                PageExperienceWidget(
                  dateDebut: 'Avril 2010',
                  dateFin: 'Septembre 2010',
                  title: 'Stage de fin d\'études',
                  entreprise: 'Systel',
                  subtitle:
                      'Refonte du module de gestion des feuilles de garde du portail web.',
                  technos: 'Flex, Java, BlazeDS, Cairngorm',
                ),
                PageExperienceWidget(
                  dateDebut: 'Janvier 2009',
                  dateFin: 'Mars 2010',
                  title: 'Alternance',
                  entreprise: 'Apogéa',
                  subtitle:
                      'Maintenance et développement d\'un outil de plannification interne.',
                  technos: 'VB.Net, SQL Server, WinDev',
                ),
                PageExperienceWidget(
                  dateDebut: 'Juillet 2008',
                  dateFin: 'Octobre 2008',
                  title: 'Stage à plein temps',
                  entreprise: 'Atos Origin Intégration',
                  subtitle:
                      'Intégration à l\'équipe de développement Michelin.',
                  technos: 'C#, NHibernate, Spring.Net, ASP',
                ),
                PageExperienceWidget(
                  dateDebut: 'Janvier 2008',
                  dateFin: 'Octobre 2008',
                  title: 'Alternance',
                  entreprise: 'Atos Origin Intégration',
                  subtitle:
                      'Développement d\'un outil de contrale qualité pour Renault.',
                  technos: 'VB.Net',
                ),
                PageExperienceWidget(
                  dateDebut: 'Janvier 2008',
                  dateFin: 'Décembre 2008',
                  title: 'JSP - Orléans Nord',
                  entreprise: 'Association JSP - Orléans Nord',
                  subtitle:
                      'Création d\'un ERP pour le suivi de formation des jeunes sapeurs pompiers',
                  technos: 'PHP, jQuery, Mysql',
                  perso: true,
                ),
                PageExperienceWidget(
                  dateDebut: 'Juin 2006',
                  dateFin: 'Juillet 2006',
                  title: 'Stage',
                  entreprise: 'Mory Logidis',
                  subtitle:
                      'Développement d’un site internet d’achats en ligne pour des clients n’ayant pas les moyens de s’interfacer avec le progiciel INFOLOG',
                  technos: 'PHP, jQuery, AS/400',
                ),
                PageSpacerWidget(),
                PageTitleWidget(title: 'CENTRES D\'INTERETS'),
                Wrap(
                  spacing: 20,
                  runSpacing: 20,
                  children: [
                    PageHobbyWidget(
                        icon: Icons.settings_input_antenna,
                        title: 'Domotique (contributeur Jeedom)'),
                    PageHobbyWidget(
                        title: 'Paramoteur', icon: Icons.paragliding),
                    PageHobbyWidget(
                        title: 'Sapeur Pompier Volontaire',
                        icon: Icons.local_fire_department),
                    PageHobbyWidget(
                        title: 'Electronique', icon: Icons.bug_report),
                    PageHobbyWidget(title: 'Voyages', icon: Icons.explore)
                  ],
                ),
                PageSpacerWidget(),
              ],
            ),
          ),
        ),
      ),
    ]);
  }
}
