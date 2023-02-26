import 'dart:math';
import 'dart:io';

final rgen = Random();
void main() {
  //
  forceGame();
  startGame();
}

void forceGame() {
  bool isReady = false;
  while (!isReady) {
    print("Are you ready?");
    String readyOrNot = stdin.readLineSync()!;
    if (readyOrNot == "Yes") {
      isReady = true;
    } else {
      isReady = false;
    }
  }
}

void startGame() {
  int counter = 0;
  bool gameEnded = false;
  int lowest = 0;
  int highest = 100;
  while (!gameEnded) {
    int guess = makeAGuess(lowest, highest);
    AnswerType answer = checkGuess(guess);
    counter++;
    if (answer.isYes) {
      print("I won in $counter attempts!");
      gameEnded = true;
    } else if (answer.isLow) {
      highest = guess - 1;
    } else if (answer.isHigh) {
      lowest = guess + 1;
    }
  }
}

int makeAGuess(int lowest, int highest) {
  int range = highest - lowest;
  int guess = rgen.nextInt(range + 1) + lowest;
  return guess;
}

AnswerType checkGuess(int guess, {String? userMessage}) {
  String initialUserMessage =
      '$guess is this your number? Type (Yes, High, Low)';
  print(userMessage ?? initialUserMessage);
  String checkIfCorrect = stdin.readLineSync()!;
  if (checkIfCorrect == "Yes") {
    return AnswerType.yes;
  } else if (checkIfCorrect == "Low") {
    return AnswerType.low;
  } else if (checkIfCorrect == "High") {
    return AnswerType.high;
  } else {
    String userMessage =
        "You entered invalid input, please choose from these: Type (Yes, High, Low)";
    return checkGuess(guess, userMessage: userMessage);
  }
}

enum AnswerType { yes, high, low }

extension AnswerTypeExtension on AnswerType {
  bool get isYes => this == AnswerType.yes;
  bool get isHigh => this == AnswerType.high;
  bool get isLow => this == AnswerType.low;
}
