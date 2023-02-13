//I believe at this point if you understood everything we covered this should be

// ignore_for_file: unnecessary_final

typedef Json = Map<String, dynamic>;

abstract class JsonConvertable<T> {
  Json toJson();
}

abstract class Parent {
  getChildsList();
}

abstract class Named implements JsonConvertable, Parent {
  final String name;

  const Named({
    required final this.name,
  });
}

abstract class CelestialObject implements Named {
  @override
  final String name;
  final double mass;
  final double radius;

  const CelestialObject({
    required final this.name,
    required final this.mass,
    required final this.radius,
  });
}

class Galaxy extends CelestialObject {
  final String color;
  final List<StarSystem> starSystems;

  const Galaxy({
    required final String name,
    required final double mass,
    required final double radius,
    required final this.color,
    required final this.starSystems,
  }) : super(mass: mass, name: name, radius: radius);

  @override
  factory Galaxy.fromJson(Json json) {
    return Galaxy(
      name: json['name'],
      mass: json['mass'],
      radius: json['radius'],
      color: json['color'],
      starSystems: (json['star-systems'] as List)
          .map((rawStarSystem) => StarSystem.fromJson(rawStarSystem))
          .toList(),
    );
  }

  @override
  Json toJson() => {
        'name': name,
        'mass': mass,
        'radius': radius,
        'color': color,
        'star-systems':
            starSystems.map((starSystem) => starSystem.toJson()).toList(),
      };

  @override
  List<StarSystem> getChildsList() => starSystems;
}

class StarSystem implements Named {
  @override
  final String name;
  final Star star;
  final List<Planet> planets;

  const StarSystem({
    required final this.name,
    required final this.star,
    required final this.planets,
  });

  factory StarSystem.fromJson(Json json) {
    List<Planet> planets = [];

    for (var currentRaw in json['planets']) {
      Planet current = Planet.fromJson(currentRaw);
      planets.add(current);
    }

    return StarSystem(
      name: json["name"],
      star: Star.fromJson(json["star"]),
      planets: planets,
    );
  }

  @override
  Json toJson() => {
        "name": name,
        "star": star.toJson(),
        "planets": planets.map((planet) => planet.toJson()).toList(),
      };

  @override
  List<Planet> getChildsList() => planets;
}

class Star extends CelestialObject {
  final double luminescence;

  const Star({
    required final String name,
    required final double mass,
    required final double radius,
    required final this.luminescence,
  }) : super(mass: mass, name: name, radius: radius);

  @override
  factory Star.fromJson(Json json) => Star(
        name: json['name'],
        mass: json['mass'],
        radius: json['radius'],
        luminescence: json['luminescence'],
      );

  @override
  Json toJson() => {
        'name': name,
        'mass': mass,
        'radius': radius,
        'luminescence': luminescence,
      };

  @override
  getChildsList() => Exception("No Child");
}

class Planet extends CelestialObject {
  final bool isPopulated;
  final List<Moon> moons;

  const Planet({
    required final String name,
    required final double mass,
    required final double radius,
    required final this.isPopulated,
    required final this.moons,
  }) : super(mass: mass, name: name, radius: radius);

  @override
  factory Planet.fromJson(Json json) {
    List<Moon> moons = [];

    for (var currentRaw in json['moons']) {
      Moon current = Moon.fromJson(currentRaw);
      moons.add(current);
    }
    return Planet(
      name: json['name'],
      mass: json['mass'],
      radius: json['radius'],
      isPopulated: json['isPopulated'],
      moons: moons,
    );
  }

  @override
  Json toJson() => {
        'name': name,
        'mass': mass,
        'radius': radius,
        'isPopulated': isPopulated,
        'moons': moons.map((moon) => moon.toJson()).toList(),
      };
  @override
  List<Moon> getChildsList() => moons;
}

class Moon extends CelestialObject {
  const Moon({
    required final String name,
    required final double mass,
    required final double radius,
  }) : super(mass: mass, name: name, radius: radius);

  factory Moon.fromJson(Json json) => Moon(
        name: json['name'],
        mass: json['mass'],
        radius: json['radius'],
      );

  @override
  Json toJson() => {
        'name': name,
        'mass': mass,
        'radius': radius,
      };

  @override
  getChildsList() => Exception("No Child");
}
