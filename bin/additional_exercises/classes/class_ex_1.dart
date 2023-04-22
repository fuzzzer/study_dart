//1. Create a class Shape with methods calculateArea() and calculatePerimeter(). Create subclasses Rectangle, Circle, and Triangle,
//each with its own implementation of these methods. Write a function that takes a list of Shape objects and returns the
// total area and perimeter of all the shapes.

import 'dart:math';

void main() {
  Rectangle rect = Rectangle(width: 20, height: 40);
  Circle circ = Circle(radius: 15);
  Triangle tri = Triangle(sideA: 10, sideB: 5, base: 6);
  List<Shape> list = [];
  list.add(rect);
  list.add(circ);
  list.add(tri);
  print(list);
  print(rect.calculateArea());
  print(circ.calculateArea());
  print(tri.calculateArea());
  double total = totalAreaAndPerimeter(list);
  print(total);
  print(rect.calculatePerimeter() +
      circ.calculatePerimeter() +
      tri.calculatePerimeter() +
      rect.calculateArea() +
      tri.calculateArea() +
      circ.calculateArea());
}

class Shape {
  double calculateArea() {
    return 0;
  }

  double calculatePerimeter() {
    return 0;
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

double totalAreaAndPerimeter(List<Shape> list) {
  double result = 0;
  for (int i = 0; i < list.length; i++) {
    if (list[i] is Triangle) {
      result += list[i].calculateArea();
      result += list[i].calculatePerimeter();
    } else if (list[i] is Circle) {
      result += list[i].calculateArea();
      result += list[i].calculatePerimeter();
    } else {
      result += list[i].calculateArea();
      result += list[i].calculatePerimeter();
    }
  }

  return result;
}
