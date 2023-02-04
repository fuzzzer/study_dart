import 'dart:io';

void main() {
  print("Enter the first number:");
  var num1 = int.parse(stdin.readLineSync()!);

  print("Enter the second number:");
  var num2 = int.parse(stdin.readLineSync()!);

  var sum = num1 + num2;
  var difference = num1 - num2;
  var product = num1 * num2;
  var quotient = num1 / num2;

  print("Sum: $sum");
  print("Difference: $difference");
  print("Product: $product");
  print("Quotient: $quotient");
}

// In this program, the main function starts by asking the user to input the first and second numbers. 
// The user inputs are read using the stdin.readLineSync() method and stored as int variables num1 and num2.
// Next, the program calculates the sum, difference, product, and quotient of num1 and num2 and stores the 
// results in the variables sum, difference, product, and quotient.
// Finally, the program prints the results to the console.
// This program demonstrates how to take user input, perform arithmetic operations, and 
// display the results in Dart. It's a simple program that can be used as a starting point 
// for more complex programs.