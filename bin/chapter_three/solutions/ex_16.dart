// 16. Create a map of prices for 5 items and find the total cost of all the items.

void main() {
  Map<String, double> scores = {
    "Soap": 1.5,
    "Bread": 4,
    "Milk": 3.2,
    "Butter": 2,
    "Water": 0.5
  };
  double totalCost = 0;

  for (double itemcost in scores.values) {
    totalCost = totalCost + itemcost;
  }
  print(totalCost);
}
