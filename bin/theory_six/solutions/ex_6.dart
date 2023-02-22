// 6. Write a function that takes a list of integers and a lambda, and returns a
//list of integers where each integer
//     is multiplied by the result of the lambda. Call this
// function with a list of integers and a lambda that returns
//       a random number between 1 and 10, and print the resulting list.

import 'dart:math';

List<int> multipliedByLambda(List<int> name, Function() action) {
  int output = action();
  return name.map((Number) => Number * output).toList();
}

List<int> list = [2, 4, 5, 6];
var result = multipliedByLambda(list, () => Random().nextInt(9) + 1);

void main() {
  print(result);
}
