import 'dart:io';

// this function gets an integer from user
int getInteger({String userInstructions = "Enter your number: "}) {
  print(userInstructions);
  final String? userInput1 = stdin.readLineSync();
  int? num = int.tryParse(userInput1 ?? "");
  return num!;
}

// this function finds min and max numbers in a list
void findMinMax(List<int?> name) {
  int? min = name[0];
  int? max = name[0];

  for (int i = 1; i < name.length; i++) {
    if (name[i]! < min!) {
      min = name[i];
    }
    if (name[i]! > max!) {
      max = name[i];
    }
  }
  print('Minimum: $min');
  print('Maximum: $max');
}
