//Write a lambda function that takes a list of integers and returns a new
// list containing only the even numbers.

void main() {
  List<int> numbers = [1, 2, 3, 4, 1, 23, 131, 4, 5, 43, 1, 3];
  var evenNumbers = numbers.where((element) => element % 2 == 0).toList();
  print(evenNumbers);
}
