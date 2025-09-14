import 'theory_c.dart';

// Named constructors are another way to create objects from a class.
// They allow you to define multiple constructors in a single class
// and give them each a unique name. Named constructors are useful
// when you need to create an object in a specific way and distinguish
// it from other objects.

// Here's an example of a Person class with multiple constructors:

class Person {
  String name;
  int age;
  String address;

  // Default constructor
  Person(this.name, this.age, this.address);

  //factory construnctor that creates person from given map, this is just syntax for creating person from another class, this time this another class is "Map<String, dynamic>", map of key value pairs
  factory Person.fromMap(Map<String, dynamic> map) {
    return Person(
      map['name'] as String,
      map['age'] as int,
      map['address'] as String,
    );
  }

  // Named constructor, we can create person class from emploee class, we just map data stored in emploee class to persons parameters
  factory Person.fromEmploee(Employee employee) {
    return Person(
      employee.name,
      employee.age,
      employee.address,
    );
  }
}

// In this example, the Person class has three named constructors: Person,
// fromMap and fromEmploee. The first constructor, Person, is a normal constructor
// that initializes the name, age, and address properties.
// The other two constructors,fromMap and fromEmploee, are named constructors
// that initialize the properties from a Map object.

// You can use named constructors to create objects in different ways,
// depending on the type of data you have. For example, you could use
// the fromEmploee constructor if you have data in a Employee format,
// and use the fromMap constructor if you have data in a map format.

// With this example, you can use the default constructor to create a Person
// object in the usual way:
Person person = Person("John Doe", 30, "123 Main St.");

// You can also use named constructors to create a Person object from Map object or from a Emploee object:
Map<String, dynamic> map = {
  "name": "Jane Doe",
  "age": 25,
  "address": "456 Elm St."
};
Person personFromJson = Person.fromMap(map);
//press control and left click on poor shonzo to see from where did it come from
Person personFromAnotherPerson = Person.fromEmploee(poorShonzo);
