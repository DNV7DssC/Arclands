import 'package:flutter/material.dart';

import 'package:Arclands/Home/widgets/drawer.dart';

class KickstarterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: AppDrawer(),
      ),
    );
  }
}
