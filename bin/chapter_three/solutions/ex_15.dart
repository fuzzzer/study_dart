// 15. Check if a specific key exists in the map and return the result.

import 'dart:io';

void main() {
  Map<String, int> name = {'second': 13, 'thirds': 8};

  if (name.containsKey('second')) {
    print('this key exists in map');
  } else {
    print('this key does not exists');
  }
}
