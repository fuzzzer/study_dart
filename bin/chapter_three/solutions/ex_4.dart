// 4. Sort the list in ascending order and print the result.
void main() {
  List<String?> myList = ["Home", "Work", "School", "University", "Club"];
  myList.addAll(["Church", "Airpot", "Steet"]);

  myList.sort();
  print(myList);
}
