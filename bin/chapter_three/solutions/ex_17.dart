// 17. Create a map of countries and their capitals. Print the name of the capital for a specific country.
import 'dart:io';

void main() {
  Map<String, String> capitals = {
    "Georgia": "Tbilisi",
    "England": "London",
    "France": "Paris",
    "Brazil": "Brazil",
    "Argentina": "Buenos Aires"
  };

  print("Enter a country");
  String country = stdin.readLineSync()!;
  while (capitals.containsKey(country)) {
    print("Capital of a chosen country is: ${capitals[country]}");
    break;
  }
  if (!capitals.containsKey(country)) {
    print("Chosen country is not in the list");
  }
}
