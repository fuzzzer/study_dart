// 3. Remove the first element from the list and print the remaining elements.
void main() {
  List<String?> myList = ["Home", "Work", "School", "University", "Club"];
  print(myList[2]);
  myList.addAll(["Church", "Airpot", "Steet"]);
  print(myList);
  myList.removeAt(0);
  print(myList);
}
