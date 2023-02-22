//Write a function that takes a list of strings and returns a closure that
//takes a string parameter and returns a new list of strings that contains all strings
// in the original list that contain the parameter as a substring. The closure should also
// have an optional integer parameter that specifies the maximum number of elements to return.
//Use the closure function to find all strings in the list
//['apple', 'banana', 'orange', 'pear'] that contain the substring 'an', and return at most 2 elements.

import '../../chapter_two/theory_c.dart';

Function makeAlistBySubstring(List<String> name) {
  return (String sub, {int? max}) => name
      .where((element) => element.contains(sub) && element.length < 8)
      .take(max ?? name.length)
      .toList();
}

void main() {
  List<String> myList = [
    'apple',
    'banana',
    'orange',
    'pear',
    'pancakes',
    'tangerines'
  ];
  Function findBySub = makeAlistBySubstring(myList);
  print(findBySub("an", max: 4));
}
