// 3. Write a program that takes two numbers as input and prints all the numbers between them (inclusive).

import 'dart:io';

void main() {
  print("This program will print all numbers between chosen 2 numbers:");

  print("Enter starting number:");
  final String? startingPoint = stdin.readLineSync();
  int? num1 = int.tryParse(startingPoint ?? "");

  print("Enter ending number: ");
  final String? endingPoint = stdin.readLineSync();
  int? num2 = int.tryParse(endingPoint ?? "");

  for (int i = num1!; i <= num2!; i++) {
    print(i);
  }
}
