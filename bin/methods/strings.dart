// this file has functions that can be performed on strings

//this function asks user for the number of strings and concatenates them;
import 'dart:io';

String? stringConcatenate() {
  print("How many strings do you want to concatenate? :");
  final String userInput1 = stdin.readLineSync()!;
  int numStrings = int.parse(userInput1);
  String? result = '';
  for (int i = 0; i < numStrings; i++) {
    print("Enter  string: ");
    final String input1 = stdin.readLineSync()!;
    result = '$result $input1';
  }

  return result;
}
