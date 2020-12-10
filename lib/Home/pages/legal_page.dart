import 'package:flutter/material.dart';

import 'package:Arclands/Home/widgets/drawer.dart';
import 'package:url_launcher/url_launcher.dart';

class LegalPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: AppDrawer(),
        body: LicensePage(
          applicationIcon: InkWell(
            onTap: () async {
              String url = 'https://www.arclands.de/';
              if (await canLaunch(url)) {
                await launch(url, forceWebView: true);
              } else {
                throw 'Could not launch $url';
              }
            },
            child: Container(
              padding: EdgeInsets.all(10.0),
              alignment: Alignment.center,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Image.asset('assets/images/icon.png'),
              ),
            ),
          ),
          applicationLegalese: '© 2020 Paul Pérez',
          applicationName: 'Arclands Unofficial',
          applicationVersion: 'v 0.9.0 (beta)',
        ),
      ),
    );
  }
}
