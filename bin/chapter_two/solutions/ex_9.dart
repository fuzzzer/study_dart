// 9. Write a program that takes a string as input and checks if it is a palindrome (a string that reads the same forwards and backwards).
import 'dart:io';

void main() {
  print('Please enter a word here:');
  final String? userInput = stdin.readLineSync();
  bool isPalindrome = userInput!.split('').reversed.join() == userInput;
  print(isPalindrome);
}
