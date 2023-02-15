// 1.)
// Create a base class named "Vehicle" with the following attributes: model, year,
//and type (e.g. car, truck, motorbike).
// Create subclasses for each type of vehicle: "Car", "Truck", and "Motorbike".
// Override the toString() method in each subclass to display the vehicle's information (model, year, and type).
// In the main function, create objects for each type of vehicle and print their information using the toString()
// method.
// Create a method named "startEngine" in the base class "Vehicle". In each subclass,
//override the method to print a unique message that corresponds to the type of vehicle.
// Call the "startEngine" method on each object and observe the unique message for each type of vehicle.
void main() {
  Car car = Car("Mercedes", 2010, "Car");
  Motorcycle motorcycle = Motorcycle("Yamaha", 2018, "Motorcycle");
  Truck truck = Truck("MAN", 2022, "Truck");

  print(truck);
  print(motorcycle);
  print(car);

  truck.startEngine();
  motorcycle.startEngine();
  car.startEngine();
}

class Vehicle {
  String model;
  int age;
  String type;

  Vehicle(this.model, this.age, this.type);
  @override
  String toString() {
    return 'Vehicle information: { Model: $model, Age: $age, Type: $type}';
  }

  void startEngine() {
    print("Vroom Vroom");
  }
}

class Car extends Vehicle {
  Car(super.model, super.age, super.type);

  @override
  String toString() {
    return 'Vehicle information: { Model: ${super.model}, Age: ${super.age}, Type: ${super.type}}';
  }

  @override
  void startEngine() {
    print("The engine of your car has started");
  }
}

class Motorcycle extends Vehicle {
  Motorcycle(super.model, super.age, super.type);
  @override
  String toString() {
    return 'Vehicle information: { Model: ${super.model}, Age: ${super.age}, Type: ${super.type}}';
  }

  @override
  void startEngine() {
    print("The engine of your motorcycle has started");
  }
}

class Truck extends Vehicle {
  Truck(super.model, super.age, super.type);
  @override
  String toString() {
    return 'Vehicle information: { Model: ${super.model}, Age: ${super.age}, Type: ${super.type}}';
  }

  @override
  void startEngine() {
    print("The engine of your truck has started");
  }
}
