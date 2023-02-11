// Create a Book class that has a title, author, and ISBN number.
import 'dart:io';

class Book {
  String name;
  String author;
  int isbnNumber;

  Book(
    this.name,
    this.author,
    this.isbnNumber,
  );
}

// Create a Customer class that has a name, age, and a list of books they have checked out.
class Customer {
  String name;
  int age;
  List<Book> booksCheckedOut;

  Customer(this.name, this.age, this.booksCheckedOut);
}

// Create an Employee class that has a name, age, and a list of books they have checked out.
class Employee {
  String name;
  int age;
  List<Book> booksCheckedOut;

  Employee(this.name, this.age, this.booksCheckedOut);
}

// Create a Library class that has a list of books, a list of customers, and a list of employees.
// Add a method to the Library class called checkOut that allows a customer or
// employee to check out a book by ISBN number. The method should
//remove the book from the library's list of books and add it to the customer or employee's list of books.

// Add a method to the Library class called checkIn that allows a customer or employee to return a book by ISBN number. The method should remove the book from the customer or employee's list of books and add it back to the library's list of books.

class Library {
  List<Book> books;
  List<Customer> customers;
  List<Employee> employees;

  Library(this.books, this.customers, this.employees);

  void checkOut(dynamic name) {
    String bookcode = stdin.readLineSync()!;
    int code = int.parse(bookcode);
    bool hasBook = books.any((book) => book.isbnNumber == code);
    if (hasBook == true) {
      Book targetBook = books.firstWhere((book) => book.isbnNumber == code);
      books.remove(targetBook);
      name.booksCheckedOut.add(targetBook);
    }
  }
}
