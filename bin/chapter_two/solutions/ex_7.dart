import 'dart:io';
// 7. Write a program that takes a list of numbers as input and sorts them in ascending order.

void main() {
  print("Enter any number of numbers seperated by ' ': ");
  final String? userInput1 = stdin.readLineSync();
  List<String?> splitted = userInput1!.split(' ');

  splitted.sort();
  print(splitted);
}
