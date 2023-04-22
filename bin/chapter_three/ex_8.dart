void main() {
  List<String> words = ['apple', 'banana', 'apple', 'orange', 'banana'];

  Map<String, int> wordCounts = {};

  for (String word in words) {
    if (wordCounts.containsKey(word)) {
      final int oldWordsCount = wordCounts[
          word]!; //we know that `wordCounts` list contains `word` so we can be absolutely sure that wordCounts[word] is not null so we can use ! operator.
      wordCounts[word] = oldWordsCount + 1;
    } else {
      wordCounts[word] = 1;
    }
  }

  print(wordCounts);
}


// Explanation:

// We create a list of words words and a map wordCounts to store the count of each word.
// We use a for loop to iterate over each word in the list.
// For each word, we check if the word exists in the wordCounts map using the containsKey() method.
// If the word exists, we increment its count in the map.
// If the word does not exist, we add it to the map with a count of 1.
// After the loop, we print the wordCounts map to see the number of occurrences of each word.
// The output of this program will be:

// {apple: 2, banana: 2, orange: 1}