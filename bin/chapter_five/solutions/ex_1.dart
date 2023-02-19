// 1.)
// Create a base class named "Vehicle" with the following attributes: model, year, and type (e.g. car, truck, motorbike).
// Create subclasses for each type of vehicle: "Car", "Truck", and "Motorbike".
// Override the toString() method in each subclass to display the vehicle's information (model, year, and type).
// In the main function, create objects for each type of vehicle and print their information using the toString() method.
// Create a method named "startEngine" in the base class "Vehicle". In each subclass, override the method to print a unique message that corresponds to the type of vehicle.
// Call the "startEngine" method on each object and observe the unique message for each type of vehicle.

class Vehicle {
  String model;
  int year;
  String type;

  Vehicle(this.model, this.year, this.type);

  void startEngine() {
    print('Start engine');
  }
}

class Car extends Vehicle {
  Car(super.model, super.year, super.type);

  @override
  String toString() {
    return 'Car(model: $model, year: $year, type: $type)';
  }

  @override
  void startEngine() {
    print('Start engine which sounds "fshiu"');
  }
}

class Truck extends Vehicle {
  Truck(super.model, super.year, super.type);

  @override
  String toString() {
    return 'Truck(model: $model, year: $year, type: $type)';
  }

  @override
  void startEngine() {
    print('Start engine that sounds "drumm"');
  }
}

class Motorbike extends Vehicle {
  Motorbike(super.model, super.year, super.type);

  @override
  String toString() {
    return 'Motorbike(model: $model, year: $year, type: $type)';
  }

  @override
  void startEngine() {
    print('Start engine that sounds "vrum"');
  }
}

void main() {
  Car car = Car("merceders", 2009, "benz");
  print(car);
  car.startEngine();
  Truck truck = Truck("ford", 2019, "ss");
  print(truck);
  truck.startEngine();
  Motorbike motorbike = Motorbike("ss", 2012, "kk");
  print(motorbike);
  motorbike.startEngine();
}
