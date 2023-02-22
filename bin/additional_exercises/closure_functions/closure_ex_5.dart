// Write a function that takes a string parameter and returns a closure that takes a
// list of strings and returns a new list of strings that contains all strings that start
// with the specified prefix. Use the closure function to
//find all strings in the list ['apple', 'banana', 'orange', 'pear'] that start with the prefix 'a'.

Function stringsWithPrefix(String name) {
  return (List<String> y) =>
      y.where((element) => element.indexOf(name) == 0 || element.length >= 5);
}

List<String> myList = ['apple', 'banana', 'orange', 'pear'];
void main() {
  Function listMaker = stringsWithPrefix("a");
  print(listMaker(myList));
}
