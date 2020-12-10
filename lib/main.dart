import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:asset_cache/asset_cache.dart';

import 'package:Arclands/Home/pages/splashscreen_page.dart';
import 'package:Arclands/Home/pages/home_page.dart';
import 'package:Arclands/Home/pages/about_page.dart';
import 'package:Arclands/Home/pages/legal_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  SystemChrome.setEnabledSystemUIOverlays([]);
  ByteDataAssets.instance.basePath = 'assets/images/';
  runApp(MaterialApp(
    title: 'Arclands Unofficial',
    home: SplashPage(),
    initialRoute: 'splash',
    routes: {
      'home': (context) => HomePage(),
      'about': (context) => AboutPage(),
      'legal': (context) => LegalPage(),
      'splash': (context) => SplashPage(),
    },
    color: Colors.green,
    theme: ThemeData(primaryColor: Colors.green, accentColor: Colors.green),
  ));
}
