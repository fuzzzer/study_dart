// 18. Create a map of employee names and their salaries. Find the average salary of all employees.

void main() {
  Map<String, double> employees = {
    'John': 55000,
    'Jane': 65000,
    'Bob': 75000,
    'Ann': 45,
  };
  print(avarage(employees));
}

double avarage(Map<String, double> name) {
  double sum = 0;
  for (double score in name.values) {
    sum = sum + score;
  }
  double avarageOfAll = sum / name.length;

  return avarageOfAll;
}













//   double totalSalary = 0;
//   int employeeCount = employees.length;

//   for (double salary in employees.values) {
//     totalSalary += salary;
//   }

//   double averageSalary = totalSalary / employeeCount;

//   print('The average salary of all employees is: $averageSalary');
// }

// Explanation:

// We create a map of employee names and their salaries employees.
// We initialize a variable totalSalary to store the sum of all salaries and a variable employeeCount to store the number of employees.
// We use a for loop to iterate over the values (salaries) in the employees map.
// For each salary, we add it to the totalSalary.
// After the loop, we calculate the average salary by dividing the totalSalary by the employeeCount.
// Finally, we print the average salary of all employees.

// The output of this program will be:

// The average salary of all employees is: 58500.0