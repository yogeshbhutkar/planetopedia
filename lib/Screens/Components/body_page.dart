import 'package:babylonjs_viewer/babylonjs_viewer.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:planetopedia/Screens/Components/three_d.dart';
import 'package:planetopedia/constants.dart';
import 'package:planetopedia/models/Planets.dart';

class BodyPage extends StatelessWidget {
  final Planets planets;
  const BodyPage({Key? key, required this.planets}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ListView(
      children: [
        SizedBox(
          height: size.height * 0.3,
          child: Hero(
            tag: "${planets.position}",
            child: Image.asset(planets.image),
          ),
        ),
        CarouselSlider(
          items: [
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 34, 34, 37),
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  const SizedBox(
                    height: kDefaultPaddin,
                  ),
                  Text(
                    'About ${planets.name}',
                    style: GoogleFonts.barlow(
                      textStyle: Theme.of(context)
                          .textTheme
                          .headline5
                          ?.copyWith(color: kTextColor),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(kDefaultPaddin),
                    child: Text(
                      planets.description,
                      style: GoogleFonts.barlow(
                        textStyle: Theme.of(context)
                            .textTheme
                            .headline6
                            ?.copyWith(color: kTextColor),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 34, 34, 37),
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  const SizedBox(
                    height: kDefaultPaddin,
                  ),
                  Text(
                    'Position of ${planets.name}',
                    style: GoogleFonts.barlow(
                      textStyle: Theme.of(context)
                          .textTheme
                          .headline5
                          ?.copyWith(color: kTextColor),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(kDefaultPaddin),
                    child: Text(
                      planets.position.toString(),
                      style: GoogleFonts.barlow(
                        textStyle: Theme.of(context)
                            .textTheme
                            .headline6
                            ?.copyWith(color: kTextColor),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.08,
                  ),
                  Text(
                    'Velocity of ${planets.name}',
                    style: GoogleFonts.barlow(
                      textStyle: Theme.of(context)
                          .textTheme
                          .headline5
                          ?.copyWith(color: kTextColor),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(kDefaultPaddin),
                    child: Text(
                      planets.velocity.toString(),
                      style: GoogleFonts.barlow(
                        textStyle: Theme.of(context)
                            .textTheme
                            .headline6
                            ?.copyWith(color: kTextColor),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: kDefaultPaddin,
                  ),
                  MaterialButton(
                      child: Text('3D Model'),
                      color: Colors.white,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    ThreeDimensional(planets: planets.name)));
                      })
                ],
              ),
            ),
          ],
          options: CarouselOptions(
            autoPlay: true,
            enlargeCenterPage: true,
            height: size.height * 0.5,
          ),
        )
      ],
    );
  }
}
