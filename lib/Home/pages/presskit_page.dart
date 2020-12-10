import 'package:flutter/material.dart';

import 'package:Arclands/Home/widgets/drawer.dart';
import 'package:Arclands/Home/widgets/particles.dart';

class PressKitPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: AppDrawer(),
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Image.asset(
              'assets/images/bigscreen.png',
              fit: BoxFit.cover,
            ),
            CircularParticleScreen(),
            SingleChildScrollView(),
          ],
        ),
      ),
    );
  }
}
