// This file contains methods that can be called on list types;
import 'dart:io';

// This method creates a list based on input length and items from the user;
List<String> createList() {
  // this operation creates an empty list;
  List<String> userInputName = [];
  // this operation asks the user for the lengh of the list;
  print("How long would you like your list to be? : ");
  String userInput = stdin.readLineSync()!;
  int listLength = int.parse(userInput);

  // this operation gets input from user and puts them in list as items;
  for (int i = 0; i < listLength; i++) {
    print("Enter a word:");
    String input = stdin.readLineSync()!;
    userInputName.add(input);
  }
  return userInputName;
}

// this method takes list<String> as an input and returns  Map<String,int>
// This method counts the number of occurences of words in List<String>
// and asigns respective value to a String in Map<String,int>

Map<String, int> wordOccurrences(List<String> name) {
  Map<String, int> occurrenceNumber = {};
  for (int i = 0; i < name.length; i++) {
    String? currentWord = name[i];
    if (occurrenceNumber.containsKey(currentWord)) {
      occurrenceNumber[currentWord] = (occurrenceNumber[currentWord]! + 1);
    } else {
      occurrenceNumber[currentWord] = 1;
    }
  }
  return occurrenceNumber;
}

// This method takes asks a user for the size of a map, takes string and respective
// value input from user and creates a map;

Map<String, int> simpleSheet() {
  Map<String, int> sheet = {};
  print("How many entries would you like the map to have? :");
  String userInput = stdin.readLineSync()!;
  int numOfEntries = int.parse(userInput);
  for (int i = 0; i < numOfEntries; i++) {
    print("Please specify key of a reciever: ");
    String keyInput = stdin.readLineSync()!;
    print("Please specify value of a reciever: ");
    String valueInput = stdin.readLineSync()!;
    int value = int.parse(valueInput);
    sheet.addAll({keyInput: value});
  }
  return sheet;
}
