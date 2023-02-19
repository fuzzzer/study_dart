// 8. Write a program that takes a string as input and prints all its unique characters.

import 'dart:ffi';
import 'dart:io';

void main() {
  print(uniqueCharacters());
}

Set<String> uniqueCharacters() {
  Set<String> characters = {};
  print("Choose a word: ");
  String userInput = stdin.readLineSync()!;
  for (var char in userInput.split('')) {
    characters.add(char);
  }
  return characters;
}

// print('Choose any word:');
//   final String? userInput = stdin.readLineSync();
//   Set<String?> uniqueChars = {};

//   for (var char in userInput!.split('')) {
//     uniqueChars.add(char);
//   }
//   print(uniqueChars);
// }


















