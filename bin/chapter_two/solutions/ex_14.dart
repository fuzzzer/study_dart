// 14. Write a function that takes two strings as arguments and returns the concatenation of the two strings.

import 'dart:io';

void main() {
  print(stringConcatenate());
}

String? stringConcatenate() {
  print("How many strings do you want to concatenate? :");
  final String userInput1 = stdin.readLineSync()!;
  int numStrings = int.parse(userInput1);
  String? result = '';
  for (int i = 0; i < numStrings; i++) {
    print("Enter  string: ");
    final String input1 = stdin.readLineSync()!;
    result = '$result $input1';
  }

  return result;
}
