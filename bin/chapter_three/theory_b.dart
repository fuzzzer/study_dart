void main() {
  // Maps:
// A Map is an unordered collection of key-value pairs,
// where each key is unique and can be of any type, and
// each value can also be of any type. Maps are declared
// using curly braces, and items are separated by commas.
// Here's an example of a map in Dart:

  Map<String, int> scores = {'player1': 100, 'player2': 95, 'player3': 80};

// Maps are useful for organizing data that is related to specific keys,
// and for storing data that needs to be retrieved based on a key,
// rather than by its position in an ordered structure.
// For example, you could use a map to store a collection
// of people and their ages, where the person's name is the key and their age is the value.

// accessing all keys as a list, scores.values return special data type that can be iterated through
// and we can call .toList() function to make that itarable data type a list
  scores.values.toList();

// Accessing values:
// You can access a value in a map by using square brackets and
// the key of the value you want to retrieve.
// Here's an example of accessing a value in a map:

  final int playerOneScore = scores['player1']!;
  // we can not be sure that key-pair with key 'player1' exists so scores['player1']
  // might return null, so we must use ! uperator to tell dart that we are completely sure that 'player1' key exists
  print(playerOneScore); // Output: 100

// Modifying values:
// You can modify a value in a map by using the assignment operator (=) and
// the key of the value you want to change. Here's an example of modifying a value in a map:
  scores['player1'] = 0;
  print(scores); // Output: {player1: 0, player2: 95, player3: 80}

// Adding values:
// You can add a value to a map by using the assignment operator (=) with a new key.
// Here's an example of adding a value to a map:
  scores['player4'] = 70;
  print(scores); // Output: {player1: 0, player2: 95, player3: 80, player4: 70}

// Removing values:
// You can remove a value from a map by using the remove method and the key of
// the value you want to remove. Here's an example of removing a value from a map:
  scores.remove('player3');
  print(scores); // Output: {player1: 0, player2: 95, player4: 70}
}
