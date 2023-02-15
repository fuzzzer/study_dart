//2. Create a class Animal with a method makeSound(). Create subclasses Dog, Cat, and Horse, each with its own
//implementation of the makeSound() method.
// Create a class Zoo that contains a list of Animal objects.
// Write a function that takes a Zoo object and calls the makeSound() method on all the animals in the zoo.
void main() {
  Zoo zoo = Zoo([]);
  Cat sasha = Cat();
  Dog pele = Dog();
  Cat alisa = Cat();
  Horse bojack = Horse();
  zoo.addAnimal(sasha);
  zoo.addAnimal(alisa);
  zoo.addAnimal(pele);
  zoo.addAnimal(bojack);

  zooSound(zoo);
}

void zooSound(Zoo name) {
  for (int i = 0; i < name.zoo.length; i++) {
    name.zoo[i].makeSound();
  }
}

class Zoo {
  List<Animal> zoo;
  Zoo(this.zoo);

  void addAnimal(Animal name) {
    zoo.add(name);
  }
}

class Animal {
  void makeSound() {
    print("Chochoo");
  }
}

class Dog extends Animal {
  @override
  void makeSound() {
    print("Woof WOof");
  }
}

class Cat extends Animal {
  @override
  void makeSound() {
    print("Meow Meow");
  }
}

class Horse extends Animal {
  @override
  void makeSound() {
    print("Khee khee");
  }
}
