import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:asset_cache/asset_cache.dart';

import 'package:Arclands/Home/widgets/image_section.dart';
import 'package:Arclands/Home/widgets/particles.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Image.asset(
          'assets/images/bigscreen.png',
          fit: BoxFit.cover,
        ),
        CircularParticleScreen(),
        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
              color: Colors.white,
              child: Card(
                shadowColor: Colors.transparent,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
                margin: EdgeInsets.all(10.0),
                color: Color.fromARGB(255, 242, 231, 225),
                child: Card(
                  shadowColor: Colors.transparent,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
                  color: Colors.white,
                  margin: EdgeInsets.all(5.0),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: FutureBuilder<ByteData>(
                          future: ByteDataAssets.instance
                              .load('arclands_logo_xs.png'), //Image.asset('assets/images/arclands_logo_xs.png'),
                          builder: (context, snapshot) {
                            if (snapshot.hasData) {
                              return Image.memory(snapshot.data.buffer.asUint8List());
                            } else {
                              return CircularProgressIndicator();
                            }
                          },
                        ),
                      ),
                      ImageSection(
                        image: 'screen_1.png',
                        text:
                            'Grow from a loose collection of rugged tents to a heavily fortified city and discover the secrets of the Arclands.',
                      ),
                      ImageSection(
                        image: 'screen_2.png',
                        text:
                            'Akin to classic RTS games you can build structures and your citizens will start working on them.',
                      ),
                      ImageSection(
                        image: 'screen_3.png',
                        text:
                            'Control your citizens in a typical RTS-like fashion to defend your city. Your main character can learn powerful spells by either leveling up or discovering ancient knowledge in the Arclands.',
                      ),
                      SizedBox(
                        height: 35.0,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
