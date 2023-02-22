//Write a lambda function that takes a list of strings as input
// and returns a new list containing only the strings that start with a vowel.
void main() {
  List<String> words = ['Air', 'Water', 'Smile', 'Board', 'Uganda'];
  List<String> startsWithVowels = words
      .where((element) =>
          element.startsWith('A') ||
          element.startsWith('O') ||
          element.startsWith("U") ||
          element.startsWith("E") ||
          element.startsWith("I"))
      .toList();
  print(startsWithVowels);
}
