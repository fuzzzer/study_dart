//Write a function that takes an integer parameter n
//and returns a closure that takes an integer parameter m and returns the sum
//of n and m. Use the closure function to add 5 to 10.

Function addNumbers(int n) {
  return (int m) => m + n;
}

void main() {
  Function addTen = addNumbers(10);
  Function addTwenty = addNumbers(20);
  print(addTen(5));
  print(addTwenty(29));
}
