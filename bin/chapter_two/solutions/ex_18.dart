// 18. Write a function that takes a number as an argument and returns true if the number is even and false if the number is odd.

import 'dart:io';

void main() {
  print("Choose any number: ");
  String userInput = stdin.readLineSync()!;
  int num = int.parse(userInput);
  print(evenOrOdd(num));
}

bool evenOrOdd(x) {
  if (x % 2 == 0) {
    return true;
  } else {
    return false;
  }
}
