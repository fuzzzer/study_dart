// 20. Create a map of flight routes and their distances. Find the shortest and longest routes.

import 'dart:io';

void main() {
  Map<String, int> trip = {
    'Tserakvi': 55000,
    'milkyway': 65000,
    'Bakhmaro': 75000,
    'Ithaka': 45000
  };
  List<int> oddysey = trip.values.toList();
  oddysey.sort();
  print(oddysey[0]);

  oddysey.sort((a, b) => b.compareTo(a));
  print(oddysey[0]);
}
