// 13. Remove a specific key-value pair from the map and print the remaining elements.

import 'dart:io';

void main() {
  Map<String, int> name = {'first': 2, 'second': 13, 'thirds': 8};
  name.remove('first');
  print(name);
}
