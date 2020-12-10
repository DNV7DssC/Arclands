import 'package:flutter/material.dart';

import 'package:Arclands/Home/widgets/drawer_item.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Stack(
        children: <Widget>[
          Container(
            height: 800,
            child: Image.asset(
              'assets/images/fondo.png',
              fit: BoxFit.fitHeight,
            ),
          ),
          Positioned(
            width: 150,
            height: 250,
            bottom: 0,
            right: 10,
            child: Container(
              child: Image.asset('assets/images/newsletterWiz.png'),
            ),
          ),
          ListView(
            children: <Widget>[
              DrawerHeader(
                child: Image.asset(
                  'assets/images/logo_banner.png',
                  fit: BoxFit.contain,
                ),
                padding: EdgeInsets.symmetric(vertical: 0),
              ),
              DrawerItem(title: 'Home', route: 'home'),
              DrawerItem(title: 'About', route: 'about'),
              DrawerItem(
                title: 'Kickstarter',
                url: 'https://www.kickstarter.com/projects/jonkellerdev/arclands/description',
              ),
              DrawerItem(
                title: 'itch.io',
                url: 'https://jonkeller.itch.io/arclands',
              ),
              DrawerItem(title: 'Licenses', route: 'legal'),
            ],
          ),
        ],
      ),
    );
  }
}
