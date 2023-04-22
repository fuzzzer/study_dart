//Write a lambda function that takes a
//list of integers as input and returns the sum of the squares of all the integers in the list.

void main() {
  int sumOfSquaresOfEven = [4, 5, 12, 3, 4, 55, 62, 12, 31, 45, 6, 7, 62, 13]
      .where((element) => element % 2 == 0)
      .map((e) => e * e)
      .reduce((a, b) => a + b);
  print(sumOfSquaresOfEven);
}
