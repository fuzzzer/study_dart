import "dart:io";

// 1. Write a program that takes two numbers as input and calculates their sum, difference, product, and quotient.

void main() {
  print("Enter two numbers:");
  int num1 = int.parse(stdin.readLineSync()!); //ძახილის ნიშანი რატომაა საჭირო?
  int num2 = int.parse(stdin.readLineSync()!);

  int sum = num1 + num2;
  print('The sum is: $sum.');
  int diff = num1 - num2;
  print('The difference is: $diff');
  int product = num1 * num2;
  print('The product is: $product');
  int quotient = num1 ~/ num2;
  print('The qutotient is: $quotient');
}
