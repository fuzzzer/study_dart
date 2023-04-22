// 5. Search for a specific element in the list and return its index.
void main() {
  List<String?> myList = [
    "Home",
    "Work",
    "School",
    "University",
    "Club",
    "Church",
    "Airpot",
    "Steet"
  ];
  myList.addAll(["Church", "Airpot", "Steet"]);
  myList.removeAt(0);

  myList.sort();
  print(myList);
  int? schoolIndex = myList.indexOf("School");
  print(schoolIndex);
}
