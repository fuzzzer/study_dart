// 13. Write a function that takes a string as an argument and returns the number of vowels in the string.

import 'dart:io';

void main() {
  print('Choose any word: ');
  String input = stdin.readLineSync()!;
  List<String> characters = input.split('').toList();
  print(numberOfWovels(characters));
}

int numberOfWovels(List<String> name) {
  int result = 0;
  String a = "a";
  String e = "e";
  String o = "o";
  String i = "i";
  String u = "u";
  for (int i = 0; i < name.length; i++) {
    if (name[i] == a ||
        name[i] == e ||
        name[i] == i ||
        name[i] == o ||
        name[i] == u) {
      result = result + 1;
    }
  }
  return result;
}
