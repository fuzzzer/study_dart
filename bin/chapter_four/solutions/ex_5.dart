// 5. Create a class called Car with properties such as brand, model, year and price. Add a method called getInfo that returns the information about the car.
void main() {
  Car newCar = Car(brand: "Ferrari", model: "X", year: 2022, price: 120000);

  String info = newCar.getInfo();
  print(info);
}

class Car {
  String brand;
  String model;
  int year;
  int price;
  Car(
      {required this.brand,
      required this.model,
      required this.year,
      required this.price});

  @override
  String toString() {
    return 'Car information{Make: $brand, Model: $model, Year: $year, Price: $price}';
  }

  String getInfo() {
    return 'Car information{Make: $brand, Model: $model, Year: $year, Price: $price}';
  }
}
