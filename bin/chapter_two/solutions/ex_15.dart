// 15. Write a function that takes a string as an argument and returns a list of the words in the string.
import "dart:io";

void main() {
  print("Enter a statement : ");

  final String? userInput1 = stdin.readLineSync();
  print(wordList(userInput1));
}

List<String?> wordList(x) {
  List<String?> words = [];

  for (var char in x!.split(' ')) {
    words.add(char);
  }
  return words;
}
