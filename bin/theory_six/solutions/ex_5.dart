// 5. Write a function that takes a list of integers and returns a lambda that multiplies each
//     integer in the list by a given factor. Call this function with a list of integers and a factor,
//      and then call the returned lambda with the same list to test it.

multiplyByFactor(List<int> name, int a) {
  return (List<int> name, int b) => name.map((number) => number * b);
}

void main() {
  List<int> list = [
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
  ];
  List<int> list2 = [7, 2, 4, 22, 13, 46];
  List<int> list3 = [44, 12, 33, 41, 2];

  var multipliedByFactor = multiplyByFactor(list, 5);
  print(multipliedByFactor(list2, 12));
  print(multipliedByFactor(list3, 10));
  print(multipliedByFactor(list, 10));
}
