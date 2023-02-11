// 20. Create a map of flight routes and their distances. Find the shortest and longest routes.

void main() {
  Map<String, double> ratings = {
    "Tbilisi - Kutaisi ": 200,
    "Tbilisi - Batumi ": 365,
    "Tbilisi - Stanbul": 600,
    "Tbilisi - Dortmunt ": 850,
    "Tbilisi - London ": 1300
  };
  List<MapEntry<String, double>> list =
      ratings.entries.toList(); //map entry რომ არ დდაიპრიინტოს როგორ ვქნა?
  list.sort((a, b) => a.value.compareTo(b.value));
  print('Shortest route is: ${list[0].key} : ${list[0].value}');
  int last = list.length - 1;
  print('Longest route is: ${list[last].key} : ${list[last].value}');
}
