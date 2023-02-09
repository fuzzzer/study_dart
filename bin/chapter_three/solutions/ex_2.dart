// 2. Add 3 more elements to the list and print the entire list.
void main() {
  List<String?> myList = ["Home", "Work", "School", "University", "Club"];
  print(myList[2]);
  myList.addAll(["Church", "Airpot", "Steet"]);
  print(myList);
}
