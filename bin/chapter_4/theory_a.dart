// Classes and objects are fundamental concepts in object-oriented programming (OOP).

// A class is a blueprint or a template for creating objects.
// It defines the attributes (variables) and behavior (methods)
// that an object of that class will have. Classes provide a way
// to group related data and functions into a single entity.

// An object, on the other hand, is an instance of a class.
// An object has its own unique values for the attributes defined
// in the class and can perform the operations defined by the methods in the class.

// Let's consider an example of a class Person. A Person class can
// have attributes such as name, age, and address, and methods such as walk,
// talk, and eat. When we create an object from the Person class,
// we can assign values to the attributes and call the methods to make the object
// perform the actions defined in the class.

// In Dart, we can define a class using the class keyword,
// followed by the class name, and then the attributes and methods
// inside curly braces {}.

// Here is an example of a class definition in Dart:

class Person {
  String name;
  int age;
  String address;

  Person(this.name, this.age, this.address);

  void walk() {
    print('$name is walking');
  }

  void talk() {
    print('$name is talking');
  }

  void eat() {
    print('$name is eating');
  }
}

// In Dart, the constructor is a special method that is called when
// an object is created. constructors are used to initialize an object's state
// when it's created. When you define a class, you can define one or more
// constructors for that class. The constructor defines how the object should be
// created and initialized when you create an instance of that class.
// In this example, the constructor takes three parameters: name, age, and address.
// The this keyword is used to assign the parameter values to the instance variables of
// the same name.
// So purpose of the constructor in the example aboove is to give "name", "age" and "address" values. so we can use them later
