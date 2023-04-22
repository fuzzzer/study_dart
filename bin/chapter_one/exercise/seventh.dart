// 7. Write a program that takes two numbers as input and swaps their values without using a temporary variable.

int x = 20;
int y = 42;

void main() {
  int num1 = x;
  int num2 = y;

  print(num1);
  print(num2);

  num1 = y;
  num2 = x;
  print(num1);
  print(num2);
}
