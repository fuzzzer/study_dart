import 'dart:io';

void main() {
  print("Enter a number: ");
  final String? input = stdin.readLineSync();
  int? num = int.tryParse(input ?? "");

  while (num == null) {
    print("Enter a number, nothing else: ");
    final String? input = stdin.readLineSync();
    num = int.tryParse(input ?? "");
  }

  if (num % 2 == 0) {
    print("The number is even.");
  } else {
    print("The number is odd.");
  }
}
