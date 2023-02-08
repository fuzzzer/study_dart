// 14. Write a function that takes two strings as arguments and returns the concatenation of the two strings.

import 'dart:io';

void main() {
  print("Enter first string: ");
  final String? input1 = stdin.readLineSync();

  print("Enter second string: ");
  final String? input2 = stdin.readLineSync();

  print(concatenated(input1, input2));
}

String? concatenated(x, y) {
  String? result = '$x $y';
  return result;
}
