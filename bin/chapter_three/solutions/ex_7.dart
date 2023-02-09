// 7. Create a list of strings and find the longest string in the list.

import 'package:test/expect.dart';

void main() {
  List<String> myList = [
    "Home",
    "Work",
    "School",
    "University",
    "Club",
    "Church",
    "Airpot",
    "Steet"
  ];
  myList.sort(
    (a, b) => a.length.compareTo(b.length),
  );
  myList = myList.reversed.toList();
  print(myList[0]);
}
