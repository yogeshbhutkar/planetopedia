import 'package:flutter/material.dart';
import 'package:planetopedia/constants.dart';
import 'package:planetopedia/models/Planets.dart';

class ItemCard extends StatelessWidget {
  final Planets planets;
  final VoidCallback press;
  const ItemCard({
    Key? key,
    required this.planets,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(kDefaultPaddin),
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 34, 34, 37),
                  borderRadius: BorderRadius.circular(16)),
              child: Hero(
                tag: "${planets.position}",
                child: Image.asset(planets.image),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin / 4),
            child: Text(planets.name),
          ),
        ],
      ),
    );
  }
}
