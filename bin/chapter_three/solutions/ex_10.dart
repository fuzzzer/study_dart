// 10. Create a list of scores for 5 players and find the average score.

import 'dart:io';

void main() {
  Map<String, int> scores = {
    'Player 1': 30,
    'Player 2': 3,
    'Player 3': 43,
    'Player 4': 12,
    'Player 5': 44
  };
  double avaragee = avarage(scores);
  print(avaragee);
}

double avarage(Map<String, int> name) {
  int sum = 0;
  for (int score in name.values) {
    sum = sum + score;
  }
  double avarageOfAll = sum / name.length;

  return avarageOfAll;
}
