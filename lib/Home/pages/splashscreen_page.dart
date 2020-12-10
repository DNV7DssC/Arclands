import 'package:flutter/material.dart';

import 'package:flare_splash_screen/flare_splash_screen.dart';

import 'package:Arclands/Home/pages/home_page.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SplashScreen.navigate(
        name: 'assets/animations/Arclands.flr',
        next: (_) => HomePage(),
        until: () => Future.delayed(Duration(seconds: 7)),
        startAnimation: '1',
        loopAnimation: 'MageMove',
      ),
    );
  }
}
