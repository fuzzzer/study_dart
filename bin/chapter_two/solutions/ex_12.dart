import 'dart:io';

void main() {
  print(sumOfAll(createList()));
}

List<int> createList() {
  List<int> myList = [];

  for (int i = 0; i < 5; i++) {
    print("Please enter a number:");
    String userInput = stdin.readLineSync()!;
    int num = int.parse(userInput);
    myList.add(num);
  }
  return myList;
}

int sumOfAll(List<int> name) {
  int result = 0;
  for (int i = 0; i < name.length; i++) {
    result += name[i];
  }
  return result;
}
