import 'dart:io';

void main() {
  print('Choose word:');
  String? userInput1 = stdin.readLineSync();

  print('Choose word:');
  String? userInput2 = stdin.readLineSync();

  print(concatinated(userInput1, userInput2));
}

String? concatinated(x, y) {
  String? result = '$x$y';
  return result;
}
