// 17. Create a map of countries and their capitals. Print the name of the capital for a specific country.

import 'dart:io';

void main() {
  Map<String, String> name = {
    'Georgia': 'Tbilisi',
    'USA': 'Vashington',
    'France': 'Paris',
    'Germany': 'Berlin',
    'UK': "London"
  };
  print("Choose one country: ");
  String country = stdin.readLineSync()!;
  if (name.containsKey(country)) {
    print(name[country]);
  } else {
    print('This map does not contains the country: ');
  }
  country as int;
  print('sssss');
}
