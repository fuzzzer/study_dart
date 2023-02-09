// 6. Write a program that takes a list of numbers as input and finds the largest and smallest number.
import 'dart:io';
import 'dart:core';

void main() {
  int numItems = getInteger(userInstructions: "Enter number of items: ");

  List<int?> numbers = [];
  for (int i = 0; i < numItems; i++) {
    numbers.add(getInteger());
  }

  findMinMax(numbers);
}

void findMinMax(List<int?> name) {
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

int getInteger({String userInstructions = "Enter your number: "}) {
  print(userInstructions);
  final String? userInput1 = stdin.readLineSync();
  int? num = int.tryParse(userInput1 ?? "");
  return num!;
}
