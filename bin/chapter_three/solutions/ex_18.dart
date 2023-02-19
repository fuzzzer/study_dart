// 18. Create a map of employee names and their salaries. Find the average salary of all employees.

void main() {
  Map<String, double> scores = {
    "John": 3000,
    "Sandro": 8000,
    "Soso": 8400,
    "Michael": 3000,
    "Nathan": 4000
  };

  double total = 0;
  int numOfEmp = scores.length;
  print(numOfEmp);
  for (double wage in scores.values) {
    total = total + wage;
  }
  double average = total / numOfEmp;
  print(average);
}
