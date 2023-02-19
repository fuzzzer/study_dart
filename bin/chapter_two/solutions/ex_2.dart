// 2. Write a program that takes a number as input and prints all the numbers from 1 to that number.

import 'dart:io';

void main() {
  print(
      'Choose any number and this program will print all the numbers from 1 to the chosen number: ');
  String userInput = stdin.readLineSync()!;
  int num = int.parse(userInput);
  for (int i = 1; i <= num; i++) {
    print(i);
  }
}





















//   print('This program will print all number from 1 to chosen number:');
//   print('Choose your number:');
//   final String? useInput = stdin.readLineSync();
//   int? num = int.tryParse(useInput ?? "");
//   for (int i = 1; i < num!; i++) {
//     print(i);
//   }
// }
