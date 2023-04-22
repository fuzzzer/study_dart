// 7. Create a list of strings and find the longest string in the list.

import '../../methods/lists.dart';

void main() {
  List<String> myList = createList();
  myList.sort(
    (a, b) => a.length.compareTo(b.length),
  );
  myList = myList.reversed.toList();
  print(myList[0]);
}
