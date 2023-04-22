// 3. Write a lambda that takes a list of integers and returns the sum of all even numbers in the list.
//     Call this lambda and print the result.

void main() {
  final List<int> numbers = [1, 4, 2, 3, 22, 4, 5, 6, 12, 34];

  var sumOfAll =
      numbers.where((element) => element % 2 == 0).reduce((a, b) => a + b);

  print(sumOfAll);
}
