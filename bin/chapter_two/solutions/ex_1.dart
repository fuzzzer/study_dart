// 1. Write a program that takes a number as input and prints whether it is odd or even.

import 'dart:io';

void main() {
  print('Choose any number: ');
  String userInput = stdin.readLineSync()!;
  int num = int.parse(userInput);
  print('even: ${isEven(num)}');
}

bool isEven(int x) {
  return x % 2 == 0;
}


















//   print('Choose your number:');
//   final String userInput = stdin.readLineSync()!;
//   int num = int.parse(userInput);
//   print('even: ${isEven(num)}');
// }

// bool? isEven(int x) {
//   return x % 2 == 0;
// }
