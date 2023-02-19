// 7. Write a program that takes a list of numbers as input and sorts them in ascending order.

import 'dart:io';

void main() {
  List<int> list = numbers();
  list.sort();
  print(list);
}

List<int> numbers() {
  List<int> yourNumbers = [];
  for (int i = 0; i < 5; i++) {
    print("Choose a number: ");
    String userInput = stdin.readLineSync()!;
    int num = int.parse(userInput);
    yourNumbers.add(num);
  }

  return yourNumbers;
}



















// print('Choose number:');
//   String? userInput1 = stdin.readLineSync();
//   int? num1 = int.tryParse(userInput1 ?? "");

//   print('Choose number:');
//   String? userInput2 = stdin.readLineSync();
//   int? num2 = int.tryParse(userInput2 ?? "");

//   print('Choose number:');
//   String? userInput3 = stdin.readLineSync();
//   int? num3 = int.tryParse(userInput3 ?? "");

//   print('Choose number:');
//   String? userInput4 = stdin.readLineSync();
//   int? num4 = int.tryParse(userInput4 ?? "");

//   print('Choose number:');
//   String? userInput5 = stdin.readLineSync();
//   int? num5 = int.tryParse(userInput5 ?? "");

//   List<int?> numbers = [num1, num2, num3, num4, num5];

//   numbers.sort();
//   print(numbers);
// }
