// 19. Create a map of products and their ratings. Sort the map in ascending order of ratings.

import 'dart:io';

void main() {
  Map<String, int> products = {
    'book': 13,
    'notebook': 8,
    'pen': 2,
    'pencil': 1,
    'salt': 4
  };
  List<int> values = products.values.toList();
  print(values);
  values.sort();
  print(values);
}
