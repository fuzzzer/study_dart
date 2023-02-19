// 2. Add 3 more elements to the list and print the entire list.

import 'dart:io';

void main() {
  List<int> numbers = [1, 2, 3, 4, 5];
  numbers.add(13);
  numbers += [14, 15, 16];
  print(numbers);
}
