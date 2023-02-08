// 8. Write a program that takes a string as input and prints all its unique characters.

import 'dart:io';

void main() {
  print('Please enter a word here:');
  final String? userInput = stdin.readLineSync();

  Set<String?> uniqueChars = {};

  for (var char in userInput!.split(' ')) {
    uniqueChars.add(char);
  }

  print(uniqueChars);
}
