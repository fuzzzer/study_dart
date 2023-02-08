// 6. Write a program that takes a list of numbers as input and finds the largest and smallest number.
import 'dart:io';
import 'dart:core';

void main() {
  print('Enter your number');
  final String? userInput1 = stdin.readLineSync();
  int? num1 = int.tryParse(userInput1 ?? "");

  print('Enter your number');
  final String? userInput2 = stdin.readLineSync();
  int? num2 = int.tryParse(userInput2 ?? "");

  print('Enter your number');
  final String? userInput3 = stdin.readLineSync();
  int? num3 = int.tryParse(userInput3 ?? "");

  print('Enter your number');
  final String? userInput4 = stdin.readLineSync();
  int? num4 = int.tryParse(userInput4 ?? "");

  print('Enter your number');
  final String? userInput5 = stdin.readLineSync();
  int? num5 = int.tryParse(userInput5 ?? "");

  List<int?> numbers = [num1, num2, num3, num4, num5];
  findMinMax(numbers);
}

void findMinMax(
  List<int?> name,
) {
  int? min = name[0];
  int? max = name[0];

  for (int i = 1; i < name.length; i++) {
    if (name[i]! < min!) {
      min = name[i];
    }
    if (name[i]! > max!) {
      max = name[i];
    }
  }
  print('Minimum: $min');
  print('Maximum: $max');
}
