// 19. Create a map of products and their ratings. Sort the map in ascending order of ratings.
void main() {
  Map<String, double> ratings = {
    "Soap": 1.5,
    "Bread": 4,
    "Milk": 3.2,
    "Butter": 2,
    "Water": 0.5
  };
  List<MapEntry<String, double>> list = ratings.entries.toList();
  list.sort(
    (a, b) => a.value.compareTo(b.value),
  );
  Map<String, double> sortedRatings = Map.fromEntries(list);
  print(sortedRatings);
}
