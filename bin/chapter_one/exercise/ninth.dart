// 9. Write a program that takes a number as input and checks if it is positive, negative, or zero.

import 'dart:io';

// This method takes a parameter and prints if it is positive, negative, or equal to zero.
String numberChecker(a) {
  double num = a;
  if (num > 0) {
    return 'Number is positive.';
  } else if (num < 0) {
    return 'Number is negative.';
  } else {
    return 'Number is equal to 0';
  }
}

void main() {
  print('Enter your number to check if its positive or negative:');
  double number = double.parse(stdin.readLineSync()!);
  String result = numberChecker(number);
  print(result);
}
