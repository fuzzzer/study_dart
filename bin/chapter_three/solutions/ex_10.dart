// 10. Create a list of scores for 5 players and find the average score.

import '../../methods/lists.dart';

void main() {
  Map<String, int> scores = simpleSheet();

  //int average = sum / numPlayers;
  int totalscore = 0;
  for (int score in scores.values) {
    totalscore += score;
  }

  print(totalscore);
  double averageScore = totalscore / scores.length;
  print(averageScore);
}
