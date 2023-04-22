//Write a lambda function that takes a list of
//strings and returns a new list containing only the strings that are longer than 5 characters.
void main() {
  List<String> longerThanFive = [
    'Banana',
    'City',
    'Airport',
    'Church',
    'Holiday'
  ].where((element) => element.length > 5).toList();
  print(longerThanFive);
}
