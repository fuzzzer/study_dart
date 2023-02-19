// 16. Write a function that takes a string and a character as arguments and returns the number of occurrences of the character in the string.

import 'dart:io';

void main() {
  print(occurances());
}

int occurances() {
  print('Choose a word: ');
  String? input1 = stdin.readLineSync()!;
  List<String> characters = input1.split('');
  print('Choose one character: ');
  String? input2 = stdin.readLineSync()!;
  int result = 0;
  for (int i = 0; i < characters.length; i++) {
    if (characters[i] == input2) {
      result += 1;
    }
  }
  return result;
}
