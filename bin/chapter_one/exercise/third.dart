// 3. Write a program that takes a string as input and concatenates it with another string.

import 'dart:io';

void main() {
  print('Enter your first name:');
  final String firstName = stdin.readLineSync()!;

  print('Enter your second name: ');
  final String secondName = stdin.readLineSync()!;

  print('Your name is $firstName $secondName');
}
