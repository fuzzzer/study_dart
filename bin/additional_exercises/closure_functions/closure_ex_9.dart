//Write a function that takes a string and returns a closure that
// takes a list of strings and returns a new list of strings that
//contains only the strings from the input list that contain the original
//string. The closure should also have an optional boolean parameter that
//determines whether to sort the resulting list in ascending order. Finally,
//the closure should have an optional string parameter that specifies the prefix
//that each resulting string should have. Use the closure function to generate a new
// list of strings that is the result of filtering the list ["apple", "banana", "orange", "pear", "grape"]
//to only include strings that contain the substring "an", sorting the
// resulting list in ascending order, and prefixing each resulting string with the string "fruit: ".

import '../../chapter_four/theory_d.dart';

Function analyzeString(String name) {
  return (List<String> x, {bool? sortOrNot, String? prefix}) {
    var filteredList = x.where((element) => element.contains(name)).toList();
    if (sortOrNot == true) {
      filteredList.sort((a, b) => a.compareTo(b));
    }
    if (prefix != null) {
      filteredList = filteredList.map((e) => '$prefix : $e').toList();
    }
    return filteredList;
  };
}

void main() {
  List<String> myList = [
    "apple",
    "tangerine",
    "banana",
    "orange",
    "pear",
    "grape"
  ];
  Function contains = analyzeString("an");
  print(contains((myList)));
}
