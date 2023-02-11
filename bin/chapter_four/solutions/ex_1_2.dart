// 1.2 Copy Person and Emploee classes in a separate file and write toString methods for them.

class Employee {
  String name;
  int age;
  String address;
  String position;
  int? salary;

  Employee({
    required this.name,
    required this.age,
    required this.address,
    required this.position,
    this.salary,
  });

  @override
  String toString() {
    return 'Employee{Name: $name, Age: $age, Adress: $address, Position: $position, Salary: $salary}';
  }
}

void main() {
  Employee zaza = Employee(
      name: "Zaza",
      age: 24,
      address: "Tsintsadze",
      position: "Salesconsultant");

  Employee gela = Employee(
      name: "Gela",
      age: 42,
      address: "Rustaveli 42",
      position: "Manager",
      salary: 4000);

  printIfPaid(zaza);
  printIfPaid(gela);
}

void printIfPaid(Employee name) {
  if (name is Employee && name.salary != null) {
    Employee paidEmployee = name as Employee;
    print(paidEmployee);
  }
}
