// 8. Create a list of words and count the number of occurrences of each word.

void main() {
  List<String> myList = [
    "Home",
    "Work",
    "School",
    "University",
    "Club",
    "Church",
    "Airpot",
    "Steet",
    "Work",
    "Work",
    "Airpot",
    "Church"
  ];

  Map<String, int> occurrenceNumber = {};
  for (int i = 0; i < myList.length; i++) {
    String? currentWord = myList[i];
    if (occurrenceNumber.containsKey(currentWord)) {
      occurrenceNumber[currentWord] = (occurrenceNumber[currentWord]! + 1);
    } else {
      occurrenceNumber[currentWord] = 1;
    }
  }
  print(occurrenceNumber);
}
