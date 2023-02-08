// 16. Write a function that takes a string and a character as arguments and returns the number of occurrences of the character in the string.

import "dart:io";

void main() {
  print('Please enter a word here:');
  final String? userInput = stdin.readLineSync();
  List<String?> userWord = userInput!.split('');
  print('Please enter a character here:');
  final String? userInput2 = stdin.readLineSync();
  print(countACharacter(userWord, userInput2));
}

int? countACharacter(string, character) {
  int? counter = 0;
  String tofind = character;

  for (int k = 0; k < string!.length; k++) {
    String char = string[k];
    if (string.contains(char) && char == tofind) {
      counter = counter! + 1;
    }
  }
  return counter;
}
