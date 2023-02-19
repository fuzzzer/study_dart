// 6. Create a list of numbers from 1 to 10 and print the sum of all the elements.

import 'dart:io';

void main() {
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  print(sumOfAll(numbers));
}

int sumOfAll(List<int> num) {
  int result = 0;
  for (int i = 0; i < num.length; i++) {
    result = result + num[i];
  }
  return result;
}
