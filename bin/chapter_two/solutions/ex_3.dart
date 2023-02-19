// 3. Write a program that takes two numbers as input and prints all the numbers between them (inclusive).

import 'dart:io';

void main() {
  print(
      'Choose two numbers and this program will print all the numbers between them: ');
  String userInput1 = stdin.readLineSync()!;
  int num1 = int.parse(userInput1);
  String userInput2 = stdin.readLineSync()!;
  int num2 = int.parse(userInput2);

  for (int i = num1; i <= num2; i++) {
    print(i);
  }
}





















//print("This program will print all numbers between chosen two numbers:");
//   print('Choose first number');
//   final String? userInput1 = stdin.readLineSync();
//   int? num1 = int.tryParse(userInput1 ?? "");

//   print('Choose second number:');
//   final String? userInput2 = stdin.readLineSync();
//   int? num2 = int.tryParse(userInput2 ?? "");

//   for (int i = num1!; i < num2!; i++) {
//     print(i);
//   }
// }
