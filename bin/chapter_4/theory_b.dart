class Person {
  String name;
  int age;
  String address;

  // Constructor is a function that creates and returns this class, So constructor in way is a function to create a class, look at the return type when you hover above Person(this.name, this.age, this.address)
  // we could even have constructor with different name, this.name and this.address is just a shortcut for initializing variables of data structure(class) of Person
  // Notice is we needed we could have had function body like this
  // Person(this.name, this.age, this.address){
  //  we could do some operation here, beside creating a class
  // }
  Person(this.name, this.age, this.address);

  //Notice the return type of the function when you hover mouse cursor over this name of the function
  Person.anotherFunctionThatCreatesPerson(this.name, this.age, this.address) {
    print('Person was created');
  }

  //Notice the return type of the function when you hover mouse cursor over this name of the function
  Person.thereAreInfiniteWaysToCreatePerson(this.name, this.age, this.address) {
    print('Person was created, ah again');
  }
}
