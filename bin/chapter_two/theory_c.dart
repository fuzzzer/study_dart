// Here are some additional examples of functions in Dart and their explanations:
// max function:

int max(int num1, int num2) {
  if (num1 > num2) {
    return num1;
  } else {
    return num2;
  }
}
// The max function takes two int parameters num1 and num2,
// and returns the larger of the two. This function demonstrates
// why functions are needed because it encapsulates the logic for
// finding the maximum of two numbers, and it can be reused in different
// parts of your code.

bool isEven(int number) {
  return number % 2 == 0;
}
// The isEven function takes an int parameter number,
// and returns a bool indicating whether number is even or not.
// This function can be used to check if a number is even without
// duplicating the logic in multiple parts of your code.

// By creating functions, you can:
// Break down a complex problem into smaller, manageable parts
// Reuse code, reducing duplication and making it easier to maintain
// Enhance readability and maintainability by making code more organized and modular
// Increase reliability and reduce the likelihood of bugs by isolating code that performs specific tasks
// By using functions, you can write code that is easier to read, understand, and maintain.
