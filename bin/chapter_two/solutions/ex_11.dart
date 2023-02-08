// 11. Write a function that takes two numbers as arguments and returns their product.

import "dart:io";

void main() {
  print("Enter your number here:");
  final String? userInput1 = stdin.readLineSync();
  int? num1 = int.tryParse(userInput1 ?? "");

  print("Enter your number here:");
  final String? userInput2 = stdin.readLineSync();
  int? num2 = int.tryParse(userInput2 ?? "");

  print(product(num1, num2));
}

int? product(x, y) {
  var product = x * y;
  return product;
}
