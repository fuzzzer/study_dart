// 10. Write a program that takes a string as input and calculates the frequency of each character in the string.
import 'dart:io';

void main() {
  print('Please enter a word here:');
  final String? userInput = stdin.readLineSync();
  Map<String, int> frequency = {};

  for (int i = 0; i < userInput!.length; i++) {
    String character = userInput[i];

    if (frequency.containsKey(character)) {
      frequency[character] = (frequency[character]! + 1);
    } else {
      frequency[character] = 1;
    }
  }

  print(frequency);
}
