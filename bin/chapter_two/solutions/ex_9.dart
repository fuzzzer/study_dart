// 9. Write a program that takes a string as input and checks if it is a palindrome (a string that reads the same forwards and backwards).

import 'dart:io';

void main() {
  print('Choose any word: ');
  String? input = stdin.readLineSync()!;
  if (input.split('').reversed.join() == input) {
    print('isPalindrome');
  }
}


  





















//   print('Choose any word:');
//   final String? userInput = stdin.readLineSync();
//   bool isPalindrome = userInput!.split('').reversed.join() == userInput;
//   print(isPalindrome);
// }
