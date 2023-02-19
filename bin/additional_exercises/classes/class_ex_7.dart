//7.Create a class BankAccount with methods deposit() and withdraw(). Create subclasses CheckingAccount and
// SavingsAccount, each with its own implementation of these methods. Create a class Customer with properties
// name and accounts, which is a list of BankAccount objects. Create a class Bank with a list of Customer objects.
// Write a function that takes a Bank object and calculates the total balance of all accounts at the bank.

import 'dart:io';

void main() {
  BankCustomer sandro = BankCustomer("Sandro", 24);
  sandro.accountList.addAll([
    CheckingAccount(name: "Salary", accountnumber: 2240000, balance: 20),
    SavingAccount(name: 'Life savings', accountnumber: 2240031, balance: 20)
  ]);
  BankCustomer dato = BankCustomer("Sandro", 24);
  dato.accountList.addAll([
    CheckingAccount(name: "Salary", accountnumber: 2240000, balance: 20),
    SavingAccount(name: 'Life savings', accountnumber: 2240031, balance: 20)
  ]);
  BankCustomer jora = BankCustomer("Sandro", 24);
  jora.accountList.addAll([
    CheckingAccount(name: "Salary", accountnumber: 2240000, balance: 20),
    SavingAccount(name: 'Life savings', accountnumber: 2240031, balance: 20)
  ]);
  Bank khalik = Bank("Khalik");
  khalik.customerList.addAll([jora, dato, sandro]);
  print(khalik);
  print('Total balance is: ${totalBalance(khalik)}');
}

double totalBalance(Bank name) {
  double total = 0;
  for (int i = 0; i < name.customerList.length; i++) {
    for (int j = 0; j < name.customerList[i].accountList.length; j++) {
      total += name.customerList[i].accountList[j].balance;
    }
  }
  return total;
}

class Bank {
  String name;
  List<BankCustomer> customerList = [];
  Bank(this.name);
  @override
  String toString() {
    return 'The list of customers of the bank: $customerList';
  }
}

class BankCustomer {
  List<BankAccount> accountList = [];
  String name;
  int age;
  BankCustomer(this.name, this.age);
  @override
  String toString() {
    return 'Customer information: { Name : $name, Age: $age, Account list : $accountList}';
  }
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
