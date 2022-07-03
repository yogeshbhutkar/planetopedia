import 'package:flutter/material.dart';
import 'package:planetopedia/Screens/Components/details_page.dart';
import 'package:planetopedia/Screens/Components/itemcart.dart';
import 'package:planetopedia/constants.dart';
import 'package:planetopedia/models/Planets.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(
                kDefaultPaddin, kDefaultPaddin, kDefaultPaddin, 0),
            child: GridView.builder(
              itemCount: planets.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisSpacing: kDefaultPaddin,
                mainAxisSpacing: kDefaultPaddin,
                crossAxisCount: 2,
                childAspectRatio: 0.75,
              ),
              itemBuilder: (context, index) => ItemCard(
                planets: planets[index],
                press: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailsPage(
                                planets: planets[index],
                              )));
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
