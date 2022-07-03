import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:planetopedia/Screens/Components/body.dart';
import 'package:planetopedia/constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: buildAppBar(context),
      body: Body(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: kBackgroundColor,
      elevation: 0,
      title: Text(
        "PlanetoPedia",
        style: GoogleFonts.outfit(
            textStyle: Theme.of(context)
                .textTheme
                .headline5
                ?.copyWith(color: Colors.white)),
      ),
    );
  }
}
