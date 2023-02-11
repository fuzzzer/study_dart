// 1. Copy Person and Emploee classes in a separate file and write toString methods for them.

class Person {
  String firstName;
  String secondName;
  int age;
  String address;

  Person(this.firstName, this.secondName, this.age, this.address);

  void walk() {
    print('$firstName $secondName is walking');
  }

  void talk() {
    print('$firstName $secondName is talking');
  }

  void eat() {
    print('$firstName $secondName is eating');
  }

  @override
  String toString() {
    return 'Person{firstName: $firstName, secondName: $secondName, age: $age, adress: $address }';
  }
}

void main() {
  Person person = Person("Sandro", "Abashidze", 24, "Panaskerteli-Street 15");
  print(person);
  person.eat();
}
