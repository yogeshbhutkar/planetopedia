import 'package:babylonjs_viewer/babylonjs_viewer.dart';
import 'package:flutter/material.dart';
import 'package:planetopedia/models/Planets.dart';

import '../../constants.dart';

class ThreeDimensional extends StatelessWidget {
  const ThreeDimensional({Key? key, required this.planets}) : super(key: key);
  final String planets;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: const Text('3D Model'),
          backgroundColor: kBackgroundColor,
          elevation: 0,
          leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.arrow_back_ios_outlined),
          )),
      body: BabylonJSViewer(src: 'assets/images/${planets.toLowerCase()}.glb'),
    );
  }
}
