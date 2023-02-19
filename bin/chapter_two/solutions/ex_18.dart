// 18. Write a function that takes a number as an argument and returns true if the number is even and false if the number is odd.
import "dart:io";

void main() {
  print("Enter your number:");
  String? userInput1 = stdin.readLineSync();
  int? num1 = int.tryParse(userInput1 ?? "");

  print(isEven(num1));
}

bool isEven(int? x) {
  int? num = x;
  if (num! % 2 == 0) {
    return true;
  } else {
    return false;
  }
}
