//4.Create a class Employee with properties name and salary. Create subclasses Manager and Worker,
// each with its own implementation of the salary property. Create a class Company with a
//list of Employee objects.
//Write a function that takes a Company object and prints the total salary of all the employees.
void main() {
  Manager dato = Manager("Dato", 40);
  Worker jora = Worker("Jora", 58);
  print(dato.payPerHour);
  print(dato.salaryCounter());
  print(jora.payPerHour);
  print(jora.salaryCounter());
  Company tone = Company();
  tone.allEmployes.addAll([dato, jora]);

  totalSalary(tone);
}

void totalSalary(Company name) {
  double result = 0;
  for (int i = 0; i < name.allEmployes.length; i++) {
    result += name.allEmployes[i].salaryCounter();
  }
  print(result);
}

class Employee {
  String name;
  double workingHours;
  double payPerHour = 0;
  Employee(this.name, this.workingHours);

  double salaryCounter() {
    return workingHours * 4 * payPerHour;
  }
}

class Manager extends Employee {
  @override
  double get payPerHour => 19;
  Manager(super.name, super.workingHours);
}

class Worker extends Employee {
  @override
  double get payPerHour => 14;

  Worker(super.name, super.workingHours);
}

class Company {
  List<Employee> allEmployes = [];
  Company();
}
