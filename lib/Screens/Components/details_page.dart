import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:planetopedia/constants.dart';
import 'package:planetopedia/models/Planets.dart';

import 'body_page.dart';

class DetailsPage extends StatelessWidget {
  final Planets planets;
  const DetailsPage({Key? key, required this.planets}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: buildsAppBar(context),
      body: BodyPage(
        planets: planets,
      ),
    );
  }

  AppBar buildsAppBar(BuildContext context) {
    return AppBar(
        backgroundColor: kBackgroundColor,
        elevation: 0,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back_ios_outlined),
        ));
  }
}
