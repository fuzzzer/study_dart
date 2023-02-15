//10.Create a class Shape with methods calculateArea() and calculatePerimeter().
// Create subclasses Rectangle, Circle, and Triangle, each with its own implementation of these methods.
//Create a class ShapeList that contains a list of Shape objects. Create a class ShapeSet that
// contains a set of Shape objects. Write a function that takes a ShapeList object and a ShapeSet object,
//and returns a new ShapeList object containing only the shapes that are not in the ShapeSet.
import 'dart:math';

void main() {
  Rectangle rect = Rectangle(width: 20, height: 40);
  Circle circ = Circle(radius: 15);
  Triangle tri = Triangle(sideA: 10, sideB: 5, base: 6);
  ShapeList list = ShapeList("Myshapes");
  list.allShapes.addAll([rect, circ, tri]);
  ShapeSet set = ShapeSet();
  set.setOfShapes.add(rect);
  print(list);
  print(listOfShapesNotInSet(list, set));
}

ShapeList listOfShapesNotInSet(ShapeList name, ShapeSet name2) {
  for (int i = 0; i < name.allShapes.length; i++) {
    if (name2.setOfShapes.contains(name.allShapes[i])) {
      name.allShapes.remove(name.allShapes[i]);
    }
  }
  return name;
}

class ShapeSet {
  Set<Shape> setOfShapes = {};
}

class ShapeList {
  String name;
  List<Shape> allShapes = [];
  ShapeList(this.name);
  @override
  String toString() {
    return '$allShapes';
  }
}

class Shape {
  double calculateArea() {
    return 0;
  }

  double calculatePerimeter() {
    return 0;
  }

  @override
  String toString() {
    return 'Area is: ${calculateArea()}, Perimeter is: ${calculatePerimeter()}';
  }
}

class Rectangle extends Shape {
  double width;
  double height;

  Rectangle({required this.width, required this.height});

  @override
  double calculateArea() {
    return width * height;
  }

  @override
  double calculatePerimeter() {
    return (width + height) * 2;
  }
}

class Circle extends Shape {
  int radius;
  final double pi = 3.14;

  Circle({required this.radius});

  @override
  double calculateArea() {
    return pi * radius * radius;
  }

  @override
  double calculatePerimeter() {
    return (radius * pi) * 2;
  }
}

class Triangle extends Shape {
  double sideA;
  double sideB;
  double base;
  late double s = calculatePerimeter() / 2;
  late double height = sqrt(s * ((s - sideA) * (s - sideB) * (s - base)));

  Triangle({
    required this.sideA,
    required this.sideB,
    required this.base,
  });

  @override
  double calculateArea() {
    return (height * base) / 2;
  }

  @override
  double calculatePerimeter() {
    return sideA + sideB + base;
  }
}
