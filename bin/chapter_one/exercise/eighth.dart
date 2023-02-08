// 8. Write a program that takes a number as input and converts it from Celsius to Fahrenheit.

import 'dart:io';

double fromCelsiusToFahrenheit(double celsius) {
  double fahrenheit = (celsius * 9 ~/ 5) + 32;

  return fahrenheit;
}

void main() {
  print('Enter temperature in celsius:');
  double celsius = double.parse(stdin.readLineSync()!);
  double fahrenheit = fromCelsiusToFahrenheit(celsius);
  print("$celsius celsius is equal to $fahrenheit ");
}
