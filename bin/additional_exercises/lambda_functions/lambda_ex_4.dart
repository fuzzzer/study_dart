//Write a lambda function that takes a list of integers as
//input and returns the second largest integer in the list.
void main() {
  List<int> myList = [
    1,
    2,
    3,
    4,
    5,
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    233,
    24,
    234,
    4,
    566,
    2342342,
    32422
  ];
  var secondLargest = (myList.toList()..sort((b, a) => a.compareTo(b)))[1];
  print(secondLargest);
}
