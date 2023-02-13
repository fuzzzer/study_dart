// The base class "Employee" has a method "salary" that prints the salary of an employee.
// This method is overridden in two subclasses, "Manager" and "Developer",
// to print their respective salaries.

// In the main function, objects are created for the "Manager" and
// "Developer" classes. When the "salary" method is called on these objects,
// the correct version of the method, based on the object type, is executed.
// This is polymorphism in action, where the same method name is used but its
// behavior is different based on the object it is called on.

// The @override annotation before the method in the subclass is used to indicate
// that the method in the subclass is intended to override a method with the same
// name in a superclass. It is optional but good practice to include it for clarity
// and to catch any accidental naming conflicts.

class Employee {
  void salary() {
    print("Employee salary is \$1000.");
  }
}

class Manager extends Employee {
  @override
  void salary() {
    print("Manager salary is \$2000.");
  }
}

class Developer extends Employee {
  @override
  void salary() {
    print("Developer salary is \$3000.");
  }
}

void main() {
  Manager manager = Manager();
  Developer developer = Developer();

  manager.salary();
  developer.salary();
}
