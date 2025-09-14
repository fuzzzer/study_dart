class Animal {
  String name;
  String sound;

  Animal(this.name, this.sound);

  void makeSound() {
    print("$name makes a sound: $sound");
  }
}

class Dog extends Animal {
  Dog(String name) : super(name, "Woof");
}

class Cat extends Animal {
  Cat(String name) : super(name, "Meow");
}

void main() {
  List<Animal> animals = [Dog("Buddy"), Cat("Sassy")];
  for (Animal animal in animals) {
    animal.makeSound();
  }
}


// In this example, we have a class Animal with name and sound attributes,
// and a method makeSound(). The Dog and Cat classes both inherit from
// Animal and have their own unique sound attribute. In main, we create a 
// list of Animals, but it can contain instances of either Dog or Cat.
// This is an example of polymorphism, where an instance of a subclass
// can be treated as an instance of its superclass.