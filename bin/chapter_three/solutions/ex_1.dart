// 1. Create a list of 5 strings and print the third element.

import 'dart:io';

void main() {
  print("Choose five words saparated by ' ': ");
  String input = stdin.readLineSync()!;
  List<String> name = input.split(' ');
  print(name[2]);
}
