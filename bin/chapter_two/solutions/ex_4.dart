// 4. Write a program that takes a number as input and calculates its factorial.

import 'dart:io';

void main() {
  print("Enter your number here:");
  final String? userInput = stdin.readLineSync();
  int? num = int.tryParse(userInput ?? "");
  print(factorial(num!));
}

int? factorial(int x) {
  int? result = 1;
  for (int i = 1; i <= x; i++) {
    result = result! * i;
  }
  return result;
}
