//3.Create a class BankAccount with methods deposit() and withdraw(). Create subclasses CheckingAccount and SavingsAccount, each with its own implementation of these methods.
// Create a class Customer with properties name and accounts, which is a list of BankAccount objects.
// Write a function that takes a Customer object and performs a series of deposits and withdrawals on all
//their accounts.

import 'dart:io';

void main() {
  BankCustomer sandro = BankCustomer("Sandro", 24);
  sandro.accountList.addAll([
    CheckingAccount(name: "Salary", accountnumber: 2240000, balance: 200000),
    SavingAccount(name: 'Life savings', accountnumber: 2240031, balance: 400000)
  ]);
  print(sandro.accountList);
  depositAll(sandro);
  print(sandro.accountList);

  double cash = withdrawAll(sandro);

  print(cash);
  print(sandro.accountList);
}

double withdrawAll(BankCustomer name) {
  print('Please specify amount of money you\'d like to withdraw: ');
  String userInput = stdin.readLineSync()!;
  int amount = int.parse(userInput);
  double withdrawn = 0;
  for (int i = 0; i < name.accountList.length; i++) {
    name.accountList[i].balance -= amount;
    withdrawn += amount;
  }
  return withdrawn;
}

void depositAll(BankCustomer name) {
  print('Please specify amount of money you\'d like to deposit: ');
  String userInput = stdin.readLineSync()!;
  int amount = int.parse(userInput);
  for (int i = 0; i < name.accountList.length; i++) {
    name.accountList[i].balance += amount;
  }
}

class BankCustomer {
  List<BankAccount> accountList = [];
  String name;
  int age;
  BankCustomer(this.name, this.age);
}

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

  @override
  String toString() {
    return 'Account Information {Name: $name, Account Number: $accountnumber, Balance": $balance}';
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

  @override
  double withdraw(BankAccount name) {
    String userInput = stdin.readLineSync()!;
    int amount = int.parse(userInput);
    name.balance -= amount;
    return balance;
  }
}

class SavingAccount extends BankAccount {
  SavingAccount(
      {required super.name,
      required super.accountnumber,
      required super.balance});
  @override
  double deposit(BankAccount name) {
    String userInput = stdin.readLineSync()!;
    int amount = int.parse(userInput);
    name.balance += 1.2 * amount;
    return balance;
  }

  @override
  double withdraw(BankAccount name) {
    String userInput = stdin.readLineSync()!;
    int amount = int.parse(userInput);
    name.balance -= 0.8 * amount;
    return balance;
  }
}
