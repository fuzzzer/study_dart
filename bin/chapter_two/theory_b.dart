// A function is a self-contained block of code that performs a specific task.
// In Dart, you can define your own functions or use built-in functions provided
// by the Dart libraries. Functions help you to organize your code, make it reusable,
// and improve the readability of your program. Here's a basic example of a function in Dart:

int sum(int num1, int num2) {
  return num1 + num2;
}

void main() {
  print(sum(2, 3)); // Output: 5
}

// This example defines a function sum() that takes two int arguments num1 and num2 and returns
// their sum. Here's a breakdown of the code: `int sum(int num1, int num2)` is the function signature
// that defines the function's name, its return type, and its parameters. In this case, the function
// sum returns an int value and takes two int arguments num1 and num2.return num1 + num2; returns the sum of
// num1 and num2 from the function. print(sum(2, 3)); calls the sum function and passes the arguments 2 and 3.
// The function returns 5, which is then printed to the console. Functions in Dart can also have optional parameters,
// named parameters, and default values. You can also define functions that don't return a value by using the void return type.
// By using functions, you can write more modular and organized code that is easy to maintain and understand.

// Some good coding principles when using functions and parameters include:
// 1. Giving functions descriptive names that reflect what they do
// 2. Specifying the types of parameters in the function signature
// 3. Keeping functions small and focused, performing only one task
// 4. Avoiding side effects, where a function changes state outside of its own scope
// 5. Documenting the function's purpose, inputs, outputs, and any assumptions made
// By following these principles, functions and parameters can help you write clean, reusable, and easily maintainable code.