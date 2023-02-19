// 6. Write a program that takes a list of numbers as input and finds the largest and smallest number.

import 'dart:io';

void main() {
  findMinMax(numbers());
}
//This function asks user to add numbers 5 times and this programm adds these numbers in list.
//This programm returns list.

List<int> numbers() {
  List<int> yourNumbers = [];
  for (int i = 0; i < 5; i++) {
    print("Choose a number: ");
    String userInput = stdin.readLineSync()!;
    int num = int.parse(userInput);
    yourNumbers.add(num);
  }

  return yourNumbers;
}

void findMinMax(List<int> name) {
  int min = name[0];
  int max = name[0];
  for (int i = 1; i < 5; i++) {
    if (name[i] < min) {
      min = name[i];
    }
    if (name[i] > max) {
      max = name[i];
    }
  }
  print('minimum is: $min');
  print('maximum is: $max');
}
