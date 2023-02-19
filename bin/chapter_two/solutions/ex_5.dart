// 5. Write a program that takes a number as input and prints all its divisors.

import 'dart:io';

void main() {
  print("Enter your number here: ");
  final String? userInput = stdin.readLineSync();
  int? num = int.tryParse(userInput ?? "");
  allDivisors(num!);
}

void allDivisors(int x) {
  print('Divisors of $x are:');
  for (int i = 1; i <= x / 2; i++) {
    if (x % i == 0) {
      print(i);
    }
  }
  print(x);
}
