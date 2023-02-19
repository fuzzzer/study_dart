// 15. Write a function that takes a string as an argument and returns a list of the words in the string.

import 'dart:io';

void main() {
  print(name());
}

List<String> name() {
  print("choose some words separated by ' ': ");
  String input = stdin.readLineSync()!;
  List<String> words = input.split(' ').toList();
  return words;
}
