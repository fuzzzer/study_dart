// An abstract class is a class that can't be instantiated on its own,
// but instead must be subclassed. It's used as a blueprint for creating
// objects in a superclass-subclass relationship. It provides a common
// interface for all its subclasses and defines common behavior that
// can be shared among all subclasses.

// Here's an example in Dart:

abstract class Shape {
  num area();
}

class Circle extends Shape {
  final num radius;

  Circle(this.radius);

  @override
  num area() {
    return 3.14 * radius * radius;
  }
}

class Square extends Shape {
  final num side;

  Square(this.side);

  @override
  num area() {
    return side * side;
  }
}

// In the example, we have an abstract class Shape with an abstract method area().
// The Circle and Square classes both extend Shape and provide an implementation
//for the area() method.

// On the other hand, a class is a blueprint for creating objects
//that defines a set of attributes and methods that the objects created
// from it can use. A class can be instantiated and objects can be created from it.
// Here's an example in Dart:

class Dog {
  String? name;
  int? age;

  void bark() {
    print("Bark!");
  }
}

void main() {
  Dog myDog = Dog();
  myDog.name = "Rufus";
  myDog.age = 3;
  myDog.bark();
}

// In the example, we have a class Dog with attributes name and age and a method bark().
// An object of type Dog is created from the Dog class using the Dog() constructor and
// assigned to the variable myDog. The myDog object can now access and use the attributes and
// methods defined in the Dog class.
