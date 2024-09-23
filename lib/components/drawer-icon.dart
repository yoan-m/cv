import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DrawerIconWidget extends StatelessWidget {
  final String title;
  final IconData icon;
  final LinkType? linktype;

  const DrawerIconWidget(
      {super.key, required this.title, required this.icon, this.linktype});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Icon(this.icon),
            width: 40,
          ),
          Expanded(
            child: this.linktype != null && linktype != LinkType.none
                ? TextButton(
                    onPressed: () {
                      if (this.linktype == LinkType.link) {
                        _launchInBrowser(this.title);
                      } else if (this.linktype == LinkType.mail) {
                        _makePhoneCall(
                            'mailto:' + this.title + '?subject=Contact CV');
                      } else if (this.linktype == LinkType.phone) {
                        _makePhoneCall('tel:' + this.title);
                      }
                    },
                    child: Text(this.title),
                    style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                        minimumSize: Size(50, 30),
                        alignment: Alignment.centerLeft),
                  )
                : Text(this.title),
          ),
        ],
      ),
    );
  }

  Future<void> _launchInBrowser(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: true,
        forceWebView: true,
        webOnlyWindowName: '_blank',
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  void _makePhoneCall(String url) {
    launch(url);
  }
}

enum LinkType { none, mail, phone, link }
