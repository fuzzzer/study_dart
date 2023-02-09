// 15. Check if a specific key exists in the map and return the result.
void main() {
  Map<String, int> scores = {
    "Jordan": 50,
    "Lebron": 45,
    "Kobe": 40,
  };
  print(scores["Jordan"]);
  scores.addAll({"Curry": 30, "Isaiah": 35});

  scores.remove("Isaiah");

  bool Isaiah = scores.containsKey("Isaiah");
  print(Isaiah);
}
