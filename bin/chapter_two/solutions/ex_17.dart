// 17. Write a function that takes two numbers as arguments and returns the smaller of the two numbers.

import 'dart:io';

void main() {
  print('Choose your number:');
  String? userInput1 = stdin.readLineSync();
  int? num1 = int.tryParse(userInput1 ?? "");

  print('Choose your number:');
  final String? userInput2 = stdin.readLineSync();
  int? num2 = int.tryParse(userInput2 ?? "");

  List<int?> numbers = [num1, num2];

  numbers.sort();
  print(numbers);
  smaller(num1, num2);
}

double? smaller(x, y) {
  if (x > y) {
    print(y);
  } else {
    print(x);
  }
}
