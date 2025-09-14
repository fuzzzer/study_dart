// This code demonstrates polymorphism in Dart. The Car class has a method power
// which prints "It runs on petrol." The Honda class extends Car and has no additional
// methods, so it inherits the power method from Car class. The Tesla class extends
// Car and has an overridden power method which prints "It runs on electricity."

// In the main function, we create objects of Honda and Tesla classes and call
// their power methods. When we call honda.power(), it prints "It runs on petrol."
// because it inherited the power method from Car class. And when we call tesla.power(),
// it prints "It runs on electricity." because the Tesla class overrides the power method
// in the Car class.

// This example shows how inheritance and polymorphism work together
// in Dart to allow for sharing and reuse of code, as well as modification
// of behavior of parent class in child classes.

void main() {
  Honda honda = Honda();
  Tesla tesla = Tesla();

  honda.power();
  tesla.power();
}

class Car {
  void power() {
    print("It runs on petrol.");
  }
}

class Honda extends Car {}

class Tesla extends Car {
  @override
  void power() {
    print("It runs on electricity.");
  }
}

// void main() {
//   Honda honda = Honda();
//   Tesla tesla = Tesla();

//   honda.power();
//   tesla.power();
// }
