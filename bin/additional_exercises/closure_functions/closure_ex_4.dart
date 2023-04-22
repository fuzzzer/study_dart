//Write a function that returns a closure that takes a list of integers and returns
// the sum of all elements in the list that are greater than a specified
// threshold value. Use the closure function
//to calculate the sum of all elements in the list [1, 2, 3, 4, 5, 6, 7, 8, 9] that are greater than 4.

Function sumOfAll(List<int> name) {
  return (int y) => (name.where((e) => e >= y).reduce((a, b) => a + b));
}

void main() {
  List<int> list = [
    1,
    3,
    5,
    7,
    9,
    11,
    12,
    20,
    40,
    33,
    41,
    23,
    4,
    1,
    141,
    151,
    222,
    314,
    15,
    1000,
    231,
    1423,
    134
  ];
  Function sumOfBigger = sumOfAll(list);
  print(sumOfBigger(1000));
}
