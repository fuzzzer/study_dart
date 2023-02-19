// 7. Write a program that takes two numbers as input and swaps their values without using a temporary variable.

void swapWithoutTemp(int a, int b) {
  a = a + b;
  b = a - b;
  a = a - b;
  print("a: $a, b: $b");
}

void main() {
  int num1 = 20;
  int num2 = 21;

  swapWithoutTemp(num1, num2);
}
