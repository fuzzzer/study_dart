//Write a function that takes a list of integers and returns a
// closure that takes a function parameter that operates on integers and returns a
// new list of integers that contains the result of applying the function to each element
// in the original list. The closure should also have an optional boolean parameter that
// determines whether to remove duplicates from the result list. Finally, the closure should
// have an optional integer parameter that specifies the maximum number of elements to return.
// Use the closure function to generate a new list of integers that is the result of squaring each
//element in the list [1, 2, 3, 4, 5], removing duplicates, and returning at most 3 elements.

import '../../chapter_one/exercise/seventh.dart';

Function inception(List<int> name) {
  return (Function(int x) action, {bool? removeDublicate, int? max}) =>
      removeDublicate == null
          ? name.map((x) => action(x)).take(max ?? name.length).toList()
          : name
              .map((x) => action(x))
              .take(max ?? name.length)
              .toSet()
              .toList();
}

void main() {
  List<int> myList = [1, 2, 2, 4, 15, 16, 3, 4, 3, 4, 5];
  Function squareList = inception(myList);
  print(squareList(((int x) => x * x), removeDublicate: true, max: 10));
}
