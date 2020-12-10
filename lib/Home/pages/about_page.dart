import 'package:flutter/material.dart';

import 'package:Arclands/Home/widgets/drawer.dart';
import 'package:Arclands/Home/widgets/particles.dart';

import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AboutPage extends StatelessWidget {
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
            Padding(
              padding: const EdgeInsets.all(25.0),
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
                    // margin: EdgeInsets.symmetric(vertical: 50.0, horizontal: 30.0),
                    child: Center(
                      child: SingleChildScrollView(
                        padding: const EdgeInsets.all(15.0),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              SizedBox(height: 5.0),
                              CircleAvatar(
                                radius: 80,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(100),
                                  child: Image.asset('assets/images/JonKeller.jpg'),
                                ),
                              ),
                              SizedBox(height: 25.0),
                              RichText(
                                  softWrap: true,
                                  overflow: TextOverflow.clip,
                                  textAlign: TextAlign.center,
                                  text: TextSpan(
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15.0,
                                      ),
                                      children: [
                                        TextSpan(text: "Hey there! My name is"),
                                        TextSpan(text: ' Jonas Keller', style: TextStyle(fontWeight: FontWeight.bold)),
                                        TextSpan(
                                          text: " and I'm currently developing Arclands as a passion project.",
                                        ),
                                      ])),
                              SizedBox(height: 15.0),
                              Text(
                                "Because I am working full time as a webdesigner/developer "
                                "I don't get a lot of free time to work on the game though - that's why I turned "
                                "to Kickstarter.",
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 15.0),
                              ),
                              SizedBox(height: 20.0),
                              Text(
                                " I want to create this game with you for you!",
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 15.0,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FaIcon(
                                    FontAwesomeIcons.instagram,
                                    color: Colors.grey,
                                  ),
                                  TextButton(
                                    child: Text('Instagram'),
                                    onPressed: () async {
                                      String url = 'https://www.instagram.com/jonkellerdev/';
                                      if (await canLaunch(url)) {
                                        await launch(url, enableJavaScript: true);
                                      } else {
                                        throw 'Could not launch $url';
                                      }
                                    },
                                  ),
                                  SizedBox(width: 10.0),
                                  FaIcon(
                                    FontAwesomeIcons.twitter,
                                    color: Colors.grey,
                                  ),
                                  TextButton(
                                    child: Text('Twitter'),
                                    onPressed: () async {
                                      String url = 'https://twitter.com/jonkellerdev';
                                      if (await canLaunch(url)) {
                                        await launch(url, enableJavaScript: true);
                                      } else {
                                        throw 'Could not launch $url';
                                      }
                                    },
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
