// 2. Write a program that takes a number as input and prints all the numbers from 1 to that number.

import 'dart:io';

void main() {
  print('This program will print all numbers from 1 to chosen number.');
  print('Choose your number:');
  final String? userInput = stdin.readLineSync();
  int? num = int.tryParse(userInput ?? "");
  //print(from1ToChosen(num!));
  for (int i = 1; i < num!; i++) {
    print(i);
  }
}

//String? from1ToChosen(int x) { // ფუნქციით როგორ ვქნა?
  //for (int i = 1; i < x; i++) {
   // print(i);
 //}
//}
