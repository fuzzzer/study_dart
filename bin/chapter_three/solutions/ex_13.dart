// 13. Remove a specific key-value pair from the map and print the remaining elements.
void main() {
  Map<String, int> scores = {
    "Jordan": 50,
    "Lebron": 45,
    "Kobe": 40,
  };
  print(scores["Jordan"]);
  scores.addAll({"Curry": 30, "Isaiah": 35});
  print(scores);

  scores.remove("Isaiah");
  print(scores);
}
