//Write a function that takes a list of integers and returns a closure that
//takes an integer parameter n and returns a new list that includes all elements
// of the original list that are greater than n. Use the closure function to
// create a new list that includes all elements of [1, 3, 5, 7, 9] that are greater than 4.

import 'dart:math';

Function greaterThanAndEven(List<int> name) {
  return (int n) => name.where((e) => (e > n) && e.isEven);
}

void main() {
  List<int> list = [
    1,
    3,
    5,
    7,
    9,
    11,
    12,
    20,
    40,
    33,
    41,
    23,
    4,
    1,
    141,
    151,
    222,
    314,
    15,
    1000,
    231,
    1423,
    134
  ];
  Function onlyGreaterThan = greaterThanAndEven(list);
  print(onlyGreaterThan(20));
  print(onlyGreaterThan(8));
}
