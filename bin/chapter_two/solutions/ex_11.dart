// 11. Write a function that takes two numbers as arguments and returns their product.

import 'dart:io';

void main() {
  int? num1 = 5;
  int? num2 = 7;
  print(product(num1, num2));
}

int product(x, y) {
  int result = x * y;
  return result;
}
