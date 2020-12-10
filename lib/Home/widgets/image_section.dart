import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:asset_cache/asset_cache.dart';

class ImageSection extends StatelessWidget {
  final String image;
  final String text;

  ImageSection({this.image, this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: FutureBuilder<ByteData>(
              future: ByteDataAssets.instance.load(image),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Image.memory(snapshot.data.buffer.asUint8List());
                } else {
                  return CircularProgressIndicator();
                }
              },
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16.0),
          ),
        ),
      ],
    );
  }
}
