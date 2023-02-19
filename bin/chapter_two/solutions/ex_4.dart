// 4. Write a program that takes a number as input and calculates its factorial.

import 'dart:io';

void main() {
  print('Choose any number and this programm will calculate its factorial: ');
  String userInput1 = stdin.readLineSync()!;
  int num1 = int.parse(userInput1);
  print(factorial(num1));
}

int factorial(int x) {
  int result = 1;
  for (int i = 1; i <= x; i++) {
    result = result * i;
  }
  return result;
}























//print('Choose your number:');
//   final String? userInput = stdin.readLineSync();
//   int? num = int.tryParse(userInput ?? "");
//   print(factorial(num!));
// }

// int? factorial(int x) {
//   int? result = 1;
//   for (int i = 1; i <= x; i++) {
//     result = result! * i;
//   }
//   return result;
// }
