// The cast operator in Dart allows you to check if an object is an instance of
// a certain class and to cast it to that class if it is.
// The syntax for the cast operator is as.

// Here's an example:

class Employee {
  String name;
  int age;
  String address;
  //notice that salary can be null
  int? salary;

  //Notice the differance between two constructors one in written in format () other ({}),
  // read this article to understand differances: https://sarunw.com/posts/dart-parameters/
  Employee({
    required this.name,
    required this.age,
    required this.address,
    //salary is not required because if it is not passed to the constructor, dart automatically makes it null
    this.salary,
  });
}

//Try to print salary of shonzo, what will be the value?
Employee poorShonzo = Employee(
  name: 'shonzo',
  age: 19,
  address: 'gldani',
);

Object richGela = Employee(
  name: 'gela',
  age: 40,
  address: 'gldani',
  salary: 100000,
);

void main() {
  if (richGela is Employee) {
    // ignore: unused_local_variable
    Employee knownForSureEmployy = richGela as Employee;
    // do something with the Employee object
  }
}

// In the example above, the object employee is first checked to see
// if it is an instance of the Employee class using the is operator.
// If it is, it is then cast to an Employee object using the as operator
// and stored in the variable emp. The code inside the if block can now
// access the properties and methods of the Employee class through the emp
// variable.
