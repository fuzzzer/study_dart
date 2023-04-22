// 1. Write an anonymous function that takes two parameters (a and b)
//and returns their sum. Call this function and print the result.

void main() {
  Function addNumbers = (int a, int b) => a + b;
  var add = addNumbers;
  print(add(5, 10));

  List<int> list = [1, 2, 3, 4, 5, 6];
  int sum = list.fold(0, (int current, int next) => current + next);
  print(sum);
}
