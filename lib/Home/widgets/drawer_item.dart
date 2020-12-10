import 'package:flutter/material.dart';

import 'package:bordered_text/bordered_text.dart';
import 'package:url_launcher/url_launcher.dart';

class DrawerItem extends StatelessWidget {
  final String title;
  final String route;
  final String url;

  DrawerItem({this.title, this.route, this.url = ''});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: BorderedText(
        strokeWidth: 5.0,
        strokeColor: Colors.black,
        child: Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            fontFamily: 'Grange',
            color: Colors.lightBlueAccent,
          ),
        ),
      ),
      onTap: () async {
        if (url.isNotEmpty) {
          if (await canLaunch(url)) {
            await launch(url, forceWebView: true);
          } else {
            throw 'Could not launch $url';
          }
        } else {
          // Navigator.of(context).pop();
          Navigator.of(context).popAndPushNamed(route);
        }
      },
    );
  }
}
