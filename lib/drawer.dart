import 'package:cv/components/drawer-age.dart';
import 'package:cv/components/drawer-diploma.dart';
import 'package:cv/components/drawer-icon.dart';
import 'package:cv/components/drawer-language.dart';
import 'package:cv/components/drawer-rate.dart';
import 'package:cv/components/drawer-subtitle.dart';
import 'package:cv/components/drawer-title.dart';
import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        shrinkWrap: true, //just set this property
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            margin: EdgeInsets.zero,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 52,
                  backgroundColor: Colors.grey,
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('images/avatar.jpg'),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Yoan MURCIANO',
                  style: Theme.of(context).textTheme.headlineMedium,
                )
              ],
            ),
          ),
          DrawerTileWidget(title: 'Informations personnelles'),
          DrawerAgeWidget(),
          DrawerIconWidget(
              title: 'Permis A, B, ULM classe 1', icon: Icons.directions_car),
          DrawerIconWidget(
              title: 'yoan.murciano@gmail.com',
              icon: Icons.email,
              linktype: LinkType.mail),
          DrawerIconWidget(
            title: 'https://github.com/yoan-m',
            icon: Icons.code,
            linktype: LinkType.link,
          ),
          DrawerIconWidget(title: 'La Rochelle, France', icon: Icons.pin_drop),
          Divider(
            height: 1,
          ),
          DrawerTileWidget(title: 'Compétences'),
          DrawerSubTileWidget(
            title: 'Langages/Frameworks',
          ),
          DrawerRateWidget(
            title: 'Java',
            subtitle: 'Springboot',
            rate: 2,
          ),
          DrawerRateWidget(
            title: 'Python',
            subtitle: 'Django',
            rate: 1,
          ),
          DrawerRateWidget(
            title: 'Web',
            subtitle: 'HTML, CSS, PHP, Javascript',
            rate: 3,
          ),
          DrawerRateWidget(
            title: 'Angular',
            subtitle: '',
            rate: 2,
          ),
          DrawerRateWidget(
            title: 'AngularJS',
            subtitle: '',
            rate: 3,
          ),
          DrawerRateWidget(
            title: 'OpenLayers',
            subtitle: '',
            rate: 4,
          ),
          DrawerRateWidget(
            title: 'Flutter',
            subtitle: '',
            rate: 3,
          ),
          DrawerSubTileWidget(
            title: 'Outils/Méthode',
          ),
          DrawerRateWidget(
            title: 'Docker',
            subtitle: '',
            rate: 2,
          ),
          DrawerRateWidget(
            title: 'Git',
            subtitle: '',
            rate: 3,
          ),
          DrawerRateWidget(
            title: 'GeoServer',
            subtitle: '',
            rate: 3,
          ),
          DrawerSubTileWidget(
            title: 'Langues',
          ),
          DrawerLanguageWidget(
            title: 'Anglais',
            level: 'Intermediaire',
          ),
          DrawerLanguageWidget(
            title: 'Espagnol',
            level: 'Scolaire',
          ),
          Divider(
            height: 1,
          ),
          DrawerTileWidget(title: 'Diplômes'),
          DrawerDiplomaWidget(
            title: 'Brevet Pilote ULM',
            year: '2020',
          ),
          DrawerDiplomaWidget(
            title: 'Master 2 - SUPINFO',
            year: '2010',
          ),
          DrawerDiplomaWidget(
            title: 'Chef d\'Equipe SPV',
            year: '2009',
          ),
          DrawerDiplomaWidget(
            title: 'BTS IRIS',
            year: '2007',
          ),
          DrawerDiplomaWidget(
            title: 'Brevet Jeune Sapeur Pompier',
            year: '2006',
          ),
          DrawerDiplomaWidget(
            title: 'Bac STI Génie Electronique (Mention Bien)',
            year: '2005',
          ),
        ],
      ),
    );
  }
}
