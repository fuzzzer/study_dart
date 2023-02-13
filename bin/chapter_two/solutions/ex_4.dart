// 4. Write a program that takes a number as input and calculates its factorial.

import 'ex_6.dart';

void main() {
  int num = getInteger();
  print(factorial(num));
}

int factorial(int x) {
  int result = 1;
  for (int i = 1; i <= x; i++) {
    result = result * i;
    print('currentvalue: $result');
  }
  return result;
}
