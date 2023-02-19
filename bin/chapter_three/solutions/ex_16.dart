// 16. Create a map of prices for 5 items and find the total cost of all the items.

import 'dart:io';

void main() {
  Map<String, int> name = {
    'book': 13,
    'notebook': 8,
    'pen': 2,
    'pencil': 1,
    'salt': 4
  };
  print(sumOfAll(name));
}

int sumOfAll(Map<String, int> namm) {
  int sum = 0;
  for (int score in namm.values) {
    sum = sum + score;
  }
  return sum;
}
