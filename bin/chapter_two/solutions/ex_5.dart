// 5. Write a program that takes a number as input and prints all its divisors.

import 'dart:io';

void main() {
  divisors();
  divisors();
}

void divisors() {
  print('Choose any number and this programm will print all its divisors: ');
  final String userInput = stdin.readLineSync()!;
  int num = int.parse(userInput);
  for (int i = 1; i <= num; i++) {
    if (num % i == 0) {
      print(i);
    }
  }
}























// print("Choose your number:");
//   final String? userInput = stdin.readLineSync();
//   int? num = int.tryParse(userInput ?? "");
//   allDivisors(num!);
// }

// void allDivisors(num) {
//   print('All divisors of $num are:');
//   for (int i = 1; i <= num; i++) {
//     if (num % i == 0) {
//       print(i);
//     }
//   }
// }
