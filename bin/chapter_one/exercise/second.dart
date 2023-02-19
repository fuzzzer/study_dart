import 'dart:io';
// 2. Write a program that takes a string as input and calculates its length.

void main() {
  print("Enter your string here:");
  final String userInput = stdin.readLineSync()!;
  int length = userInput.length;
  print(length);
}
