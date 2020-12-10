import 'package:flutter/material.dart';

import 'package:Arclands/Home/widgets/drawer.dart';
import 'package:Arclands/Home/widgets/body.dart';

// import 'package:assets_audio_player/assets_audio_player.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // with WidgetsBindingObserver {
  // final _player = AssetsAudioPlayer();
  // final _bgm = Audio('assets/audio/Arclands.mp3');
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Body(),
        drawer: AppDrawer(),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    // WidgetsBinding.instance.addObserver(this);
    // _player.open(_bgm, loopMode: LoopMode.playlist, volume: 0.4, respectSilentMode: true);
  }

  // @override
  // void didChangeAppLifecycleState(AppLifecycleState state) {
  //   switch (state) {
  //     case AppLifecycleState.resumed:
  //       _player.play();
  //       break;
  //     case AppLifecycleState.inactive:
  //       _player.pause();
  //       break;
  //     case AppLifecycleState.paused:
  //       _player.pause();
  //       break;
  //     case AppLifecycleState.detached:
  //       _player.stop();
  //       break;
  //   }
  // }

  // @override
  // void dispose() {
  //   // _player.stop();
  //   _player.dispose();
  //   WidgetsBinding.instance.removeObserver(this);
  //   super.dispose();
  // }
}
