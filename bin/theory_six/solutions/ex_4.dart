// 4. Write a closure that returns a function that takes a parameter and returns the square of that parameter.
//     Call this closure and assign the returned function to a variable. Then call that variable with different
//     arguments to test it.

Function squareIt(int x) {
  return (int x) => x * x;
}

Function addNumbers(int x) {
  return (int y) => x + y;
}

void main() {
  var squareTen = squareIt(5);
  print(squareTen(10));
  var addTen = addNumbers(10);
  print(addTen(6));
  // print(addTen(5)); // output: 15
}
