// 2. Add 3 more elements to the list and print the entire list.

import 'dart:io';

void main() {
  List<String?> myList = ["Home", "Work", "School", "University", "Club"];
  //myList.addAll(["Church", "Airpot", "Steet"]);
  for (int i = 0; i < 3; i++) {
    print('Enter an element: ');
    String input = stdin.readLineSync()!;
    myList.add(input);
  }
  print(myList);
}
