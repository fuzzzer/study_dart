// 4. Create a class named "Car" with attributes for make, model, and year. Create methods for displaying the car's information and for determining if the car is a classic.

void main() {
  Car porsche = Car(make: "Porsche", model: "911", year: 1950);
  print(porsche);
  String specialty = porsche.classic();
  print(specialty);
}

class Car {
  String make;
  String model;
  int year;
  String? specialty;
  int currentYear = 2023;

  Car({required this.make, required this.model, required this.year});

  @override
  String toString() {
    return 'Car information{Make: $make, Model: $model, Year: $year}';
  }

  String classic() {
    int age = currentYear - year;
    String vintage = "The car is Vintage";
    String classic = "The car is Classic";
    String antique = "The car is Antique";
    String normal = "The car isn't included in any classic category";
    if (age >= 30 && age < 40) {
      return vintage;
    }
    if (age >= 40 && age < 50) {
      return classic;
    }
    if (age >= 50) {
      return antique;
    } else {
      return normal;
    }
  }
}
