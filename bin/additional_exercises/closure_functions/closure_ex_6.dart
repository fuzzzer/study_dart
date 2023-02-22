//Write a function that takes a list of integers and returns a closure that
//takes a single integer value and returns the index of the first occurrence of that value
//in the list. Use the closure function to
//find the index of the first occurrence of the value 3 in the list [1, 2, 3, 4, 3, 2, 1].

Function findOccurrance(List<int> name) {
  return (int y) => (name.firstWhere((element) => element == y));
}

void main() {
  List<int> mylist = [1, 2, 3, 4, 3, 2, 1];
  Function firstOccurrance = findOccurrance(mylist);
  print(firstOccurrance(3));
}
