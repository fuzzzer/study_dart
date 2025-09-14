import 'dart:io';

void main() {
  print("Enter two numbers:");
  print("Number 1: ");
  int num1 = int.parse(stdin.readLineSync()!);
  print("Number 2: ");
  int num2 = int.parse(stdin.readLineSync()!);

  int sum = num1 + num2;
  print("The sum of $num1 and $num2 is $sum.");
}

// This program calculates the sum of two numbers entered by the user. 
// Here's a breakdown of the code:
// import 'dart:io'; imports the dart:io library, which provides access 
// to input/output (I/O) functionality in Dart.
// print("Enter two numbers:"); prompts the user to enter two numbers.
// print("Number 1: "); and print("Number 2: "); prompt the user to 
// enter the first and second numbers, respectively.
// int num1 = int.parse(stdin.readLineSync()); and 
// int num2 = int.parse(stdin.readLineSync()); use the 
// stdin.readLineSync() function to read a line of text from the user and 
// int.parse() function to parse the input as an integer. 
// The values are stored in the num1 and num2 variables.
// int sum = num1 + num2; calculates the sum of num1 and num2 and 
// stores it in the sum variable.
// print("The sum of $num1 and $num2 is $sum."); prints the result of 
// the calculation to the console. This program provides an example of 
// how to take input from the user and perform a calculation. 



