import 'package:flutter/material.dart';
import 'package:particles_flutter/particles_flutter.dart';

class CircularParticleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      height: screenHeight,
      width: screenWidth,
      child: Center(
        child: CircularParticle(
          awayRadius: 100,
          numberOfParticles: 200,
          speedOfParticles: 0.2,
          height: screenHeight,
          width: screenWidth,
          onTapAnimation: false,
          awayAnimationDuration: Duration(seconds: 10),
          maxParticleSize: 8,
          isRandSize: true,
          isRandomColor: true,
          randColorList: [
            Colors.white.withAlpha(50),
          ],
          // awayAnimationCurve: Curves.easeOut,
          // enableHover: true,
          // hoverColor: Colors.white,
          // hoverRadius: 90,
          // connectDots: false, //not recommended
        ),
      ),
    );
  }
}
