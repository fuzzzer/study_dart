//3.Create a class BankAccount with methods deposit() and withdraw(). Create subclasses CheckingAccount and SavingsAccount, each with its own implementation of these methods.
// Create a class Customer with properties name and accounts, which is a list of BankAccount objects.
// Write a function that takes a Customer object and performs a series of deposits and withdrawals on all
//their accounts.
import 'dart:html';
import 'dart:io';

import '../chapter_five/solutions/ex_2.dart';
import '../chapter_five/theory_f.dart';

class BankAccount {
  String name;
  int accountnumber;
  double balance;

  BankAccount(
      {required this.name, required this.accountnumber, required this.balance});

  double deposit(BankAccount name) {
    String userInput = stdin.readLineSync()!;
    int amount = int.parse(userInput);
    name.balance += amount;
    return balance;
  }

  double withdraw(BankAccount name) {
    String userInput = stdin.readLineSync()!;
    int amount = int.parse(userInput);
    name.balance -= amount;
    return balance;
  }
}

class CheckingAccount extends BankAccount {
  CheckingAccount(
      {required super.name,
      required super.accountnumber,
      required super.balance});
  @override
  double deposit(BankAccount name) {
    String userInput = stdin.readLineSync()!;
    int amount = int.parse(userInput);
    name.balance += 0.8 * amount;
    return balance;
  }
}
