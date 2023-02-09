// 10. Create a list of scores for 5 players and find the average score.

void main() {
  Map<String, int> scores = {
    "Jordan": 50,
    "Lebron": 45,
    "Kobe": 40,
    "Curry": 35,
    "Isaiah": 25
  };

  //int average = sum / numPlayers;
  int totalscore = 0;

  for (int score in scores.values) {
    totalscore += score;
  }

  print(totalscore);

  double averageScore = totalscore / scores.length;
  print(averageScore);
}
