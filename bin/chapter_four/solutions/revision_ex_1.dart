// Create a Book class that has a title, author, and ISBN number.
import 'dart:io';

void main() {
  Book demons = Book("Demons", "Dostoesky", 13398);
  Book ulysses = Book("Ulysses", "Joyce", 13399);
  Book oddysey = Book("Oddysey", "Homer", 13400);
  Book illiad = Book("Illiad", "Homer", 13401);

  Customer shota = Customer("name", 24, [demons, ulysses]);
  Employee vato = Employee("vato", 20, [ulysses]);

  Library erovnuli =
      Library([oddysey, demons, ulysses, illiad], [shota], [vato]);

  erovnuli.checkOut(customerName: shota);
  print(shota.booksCheckedOut);
  print(erovnuli.books);
  erovnuli.returnBook(customerName: shota);
  print(erovnuli.books);
  print(erovnuli.findByISBN());
}

class Book {
  String name;
  String author;
  int isbnNumber;

  Book(
    this.name,
    this.author,
    this.isbnNumber,
  );
  @override
  String toString() {
    return '$name';
  }
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

  void checkOut({Employee? employeeName, Customer? customerName}) {
    int code = userInputintoIsbn();

    bool hasBook = books.any((book) => book.isbnNumber == code);
    if (hasBook = true) {
      Book targetBook = books.firstWhere((book) => book.isbnNumber == code);
      books.remove(targetBook);
      if (employeeName == null) {
        customerName!.booksCheckedOut.add(targetBook);
      } else if (customerName == null) {
        employeeName.booksCheckedOut.add(targetBook);
      }
    }
  }

  void returnBook({Employee? employeeName, Customer? customerName}) {
    int code = userInputintoIsbn();

    if (employeeName == null) {
      takeOutofUsersListandPutInLibrary(customerName, code);
    } else if (customerName == null) {
      takeOutofUsersListandPutInLibrary(employeeName, code);
    }
  }

  void takeOutofUsersListandPutInLibrary(dynamic name, int isbn) {
    bool hasBook = name.booksCheckedOut.any((book) => book.isbnNumber == isbn);
    if (hasBook == true) {
      Book targetBook =
          name.booksCheckedOut.firstWhere((book) => book.isbnNumber == isbn);
      name.booksCheckedOut.remove(targetBook);
      books.add(targetBook);
    }
  } // Add a method to the Library class called findByISBN that takes an ISBN number as an argument and returns the book with that ISBN number.

  Book? findByISBN() {
    int isbn = userInputintoIsbn();
    try {
      bool hasBook = books.any((book) => book.isbnNumber == isbn);
      if (hasBook == true) {
        Book targetBook = books.firstWhere((book) => book.isbnNumber == isbn);
        return targetBook;
      }
    } catch (e) {
      print("We don't have a book with that isbnNumber.");
    }
  }

  int userInputintoIsbn() {
    print("Enter the isbnNumber of a book you would like to checkout: ");
    String bookcode = stdin.readLineSync()!;
    int code = int.parse(bookcode);
    return code;
  }
}
