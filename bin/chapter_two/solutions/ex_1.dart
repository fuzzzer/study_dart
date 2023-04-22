// 1. Write a program that takes a number as input and prints whether it is odd or even.

import 'dart:io';

void main() {
  print("Enter your number: ");
  final String? userInput = stdin.readLineSync();
  int? num = int.tryParse(userInput ?? "");

  print('Even: ${isEven(num!)}');
}

bool isEven(int x) {
  return x % 2 == 0;
}
