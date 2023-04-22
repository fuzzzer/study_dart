//5.Create a class Shape with methods calculateArea() and calculatePerimeter().
// Create subclasses Rectangle, Circle, and Triangle, each with its own implementation of these methods.
// Create a class ShapeList that contains a list of Shape objects.
//Write a function that takes a ShapeList object and sorts the shapes by area, from smallest to largest.

import 'dart:math';

void main() {
  Rectangle rect = Rectangle(width: 20, height: 40);
  Circle circ = Circle(radius: 15);
  Triangle tri = Triangle(sideA: 10, sideB: 5, base: 6);
  ShapeList list = ShapeList("Myshapes");
  list.allShapes.add(rect);
  list.allShapes.add(circ);
  list.allShapes.add(tri);
  sortByArea(list);
  print(list);
}

List<Shape> sortByArea(ShapeList name) {
  name.allShapes.sort((a, b) => a.calculateArea().compareTo(b.calculateArea()));
  return name.allShapes;
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
