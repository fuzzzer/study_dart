// 17. Write a function that takes two numbers as arguments and returns the smaller of the two numbers.

import 'dart:io';

void main() {
  print("Enter your number:");
  String? userInput1 = stdin.readLineSync();
  int? num1 = int.tryParse(userInput1 ?? "");

  print("Enter your number:");
  String? userInput2 = stdin.readLineSync();
  int? num2 = int.tryParse(userInput2 ?? "");

  print(min(num1!, num2!));
}

int? min(x, y) {
  int? num1 = x;
  int? num2 = y;
  int? min;

  if (num1! > num2!) {
    min = num2;
  } else {
    min = num1;
  }
  return min;
}
