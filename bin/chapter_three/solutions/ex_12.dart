// 12. Add 2 more key-value pairs to the map and print the entire map.

void main() {
  Map<String, int> scores = {
    "Jordan": 50,
    "Lebron": 45,
    "Kobe": 40,
  };
  print(scores["Jordan"]);
  scores.addAll({"Curry": 30, "Isaiah": 35});
  print(scores);
}
