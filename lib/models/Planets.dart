class Planets {
  final String name, image, description, td;
  final int position, velocity, distance;
  Planets({
    required this.name,
    required this.image,
    required this.description,
    required this.position,
    required this.velocity,
    required this.distance,
    required this.td,
  });
}

List<Planets> planets = [
  Planets(
      name: "Mercury",
      td: "assets/images/mercury.glb",
      image: "assets/images/planet1.png",
      description:
          "Mercury is the closest planet to the Sun and due to its proximity it is not easily seen except during twilight.",
      position: 1,
      velocity: 47,
      distance: 58),
  Planets(
      name: "Venus",
      td: "assets/images/venus.glb",
      image: "assets/images/planet2.png",
      description:
          "Venus is the second planet from the Sun and is the second brightest object in the night sky after the Moon. The surface of the planet is obscured by an opaque layer of clouds made up of sulphuric acid.",
      position: 2,
      velocity: 35,
      distance: 108),
  Planets(
      name: "Earth",
      image: "assets/images/planet3.png",
      td: "assets/images/earth.glb",
      description:
          "Earth is the third planet from the Sun and is the largest of the terrestrial planets.  The Earth was formed approximately 4.54 billion years ago and is the only known planet to support life.",
      position: 3,
      velocity: 29,
      distance: 149),
  Planets(
      name: "Mars",
      image: "assets/images/planet4.png",
      td: "assets/images/mars.glb",
      description:
          "Mars is the fourth planet from the Sun and is the second smallest planet in the solar system. Mars is a terrestrial planet with a thin atmosphere composed primarily of carbon dioxide.",
      position: 4,
      velocity: 24,
      distance: 227),
  Planets(
      name: "Jupiter",
      image: "assets/images/planet5.png",
      td: "assets/images/jupiter.glb",
      description:
          "The planet Jupiter is the fifth planet out from the Sun, and is two and a half times more massive than all the other planets in the solar system combined. It is made primarily of gases and is therefore known as a “gas giant”.",
      position: 5,
      velocity: 13,
      distance: 778),
  Planets(
      name: "Saturn",
      image: "assets/images/planet6.png",
      td: "assets/images/saturn.glb",
      description:
          "Saturn is the sixth planet from the Sun and the most distant that can be seen with the naked eye. Like Jupiter, Saturn is a gas giant and is composed of similar gasses including hydrogen, helium and methane.",
      position: 6,
      velocity: 9,
      distance: 1426),
  Planets(
      name: "Uranus",
      image: "assets/images/planet7.png",
      td: "assets/images/uranus.glb",
      description:
          "Uranus is the seventh planet from the Sun. While being visible to the naked eye, it was not recognised as a planet due to its dimness and slow orbit.",
      position: 7,
      velocity: 6,
      distance: 2870),
  Planets(
      name: "Neptune",
      image: "assets/images/planet9.png",
      td: "assets/images/neptune.glb",
      description:
          "Neptune is the eighth planet from the Sun making it the most distant in the solar system. ",
      position: 8,
      velocity: 5,
      distance: 4498),
  Planets(
      name: "Sun",
      image: "assets/images/planet10.png",
      td: "assets/images/sun.glb",
      description:
          "The Sun (or Sol), is the star at the centre of our solar system and is responsible for the Earth’s climate and weather. ",
      position: 9,
      velocity: 220,
      distance: 0)
];
