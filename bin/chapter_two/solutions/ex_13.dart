// 13. Write a function that takes a string as an argument and returns the number of vowels in the string.
import 'dart:io';

void main() {
  print("Enter a word: ");
  final String userInput1 = stdin.readLineSync()!;
  List<String?> characters = userInput1.split('');
  print(countVowels(characters));
}

int? countVowels(List<String?> input) {
  int? counter = 0;

  for (int k = 0; k < input.length; k++) {
    String a = "a";
    String o = "o";
    String e = "e";
    String u = "u";
    String i = "i";
    String? character = input[k];
    if (input.contains(character) && character == i ||
        character == o ||
        character == e ||
        character == u ||
        character == a) {
      counter = counter! + 1;
    }
  }
  return counter;
}
