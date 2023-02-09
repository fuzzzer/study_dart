// 12. Write a function that takes a list of numbers as an argument and returns the sum of all the numbers in the list.

import "dart:io";

void main() {
  print("Enter any number of numbers seperated by ' ': ");
  final String userInput1 = stdin.readLineSync()!;
  print(sumOfAll(userInput1));
}

int? sumOfAll(String input) {
  List<String?> splitted = [];

  for (var char in input.split(' ')) {
    splitted.add(char);
  }
  splitted.sort();
  int? result = 0;
  for (int i = 0; i < splitted.length; i++) {
    int? next = int.tryParse(splitted[i] ?? "");
    result = result! + next!;
  }
  return result;
}
