// 9. Create a class called Person with properties such
//as name, age, and address. Add a method called greet that returns a personalized greeting to the person.

void main() {
  Person gocha = Person(name: "Gocha", adress: "Plexanovi", age: 22);
  gocha.personalizedGreeting();
}

class Person {
  String name;
  String adress;
  int age;

  Person({required this.name, required this.adress, required this.age});

  void personalizedGreeting() {
    print("Greetings $name");
  }
}
