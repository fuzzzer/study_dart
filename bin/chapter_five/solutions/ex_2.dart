// 2.)
// The task requires the use of classes and objects in Dart, as well
// as inheritance and polymorphism to create a simulation of a bank system.
// In the simulation, you need to keep track of customers and their accounts,
// where each customer can have multiple accounts.
// There should be two types of accounts: Savings and Checking.
// Each account should have its own interest rate.

// To begin, you should create a class for customers,
// which would store information such as their name, address,
// and any accounts they have. Next, create two separate classes
// for savings and checking accounts, both of which should inherit
// from a common class for all types of accounts.

// The savings account class should have a higher interest rate than the
// checking account class. You should also create methods in each class
// to calculate the interest earned and the balance of the account after
// the interest is added.

// You should then create instances of the customer, savings account,
// and checking account classes to demonstrate how the simulation works.
// You could use control structures like for loops to iterate over all of a customer's accounts
// and calculate the total interest earned.

// The main goal of the exercise is to demonstrate a practical application of classes,
// objects, inheritance, and polymorphism in Dart. You should aim to create a clear
// and well-organized simulation that is easy to understand and modify as needed.

// 2. Create the Account class with attributes for account number,
//    balance, and interest rate. Add methods for deposit and withdrawal.

void main() {
  Customer gocha = Customer(name: "Gocha", age: 20, adress: "Plexanovi");
  gocha.addAcount(SavingsAccount(133340, 13200, 8));
  SavingsAccount savings2 = SavingsAccount(444000, 20000, 8);
  gocha.addAcount(savings2);
  print(gocha.accountList);
}

class BankAccounts {
  double balance;
  int accountNumber;
  double interestRate;
  BankAccounts(this.accountNumber, this.balance, this.interestRate);

  void deposit(int x) {
    balance += x;
  }

  void withdraw(int x) {
    balance -= x;
  }
}

class SavingsAccount extends BankAccounts {
  SavingsAccount(
    super.accountNumber,
    super.balance,
    super.interestRate,
  );
  set interest(double value) {
    if (value > 0) {
      interestRate = value;
    }
  }

  double interestCount() {
    for (int i = 0; i < 12; i++) {
      double interest = balance *= interestRate;
      balance += interest;
    }
    return balance;
  }

  @override
  String toString() {
    return 'Savings account information{Account Number: $accountNumber, Balance: $balance, Interest Rate: $interestRate, Balance: $balance}';
  }
}

class CheckAccount extends BankAccounts {
  double afterInterest;

  CheckAccount(super.accountNumber, super.balance, super.interestRate,
      this.afterInterest);
  double interestCount() {
    afterInterest = balance;
    for (int i = 0; i < 12; i++) {
      afterInterest *= (interestRate * 0.7);
    }
    return afterInterest;
  }

  @override
  String toString() {
    return ' Check account information {Account Number: $accountNumber, Balance: $balance, Interest Rate: ${0.7 * interestRate}, Balance: $balance}';
  }
}

class Customer {
  String name;
  int age;
  String adress;
  List<BankAccounts> accountList = [];
  Customer({
    required this.name,
    required this.age,
    required this.adress,
  });

  void addAcount(BankAccounts name) {
    accountList.add(name);
  }

  void removeAccount(BankAccounts name) {
    accountList.remove(name);
  }

  @override
  String toString() {
    return 'List of $name"s" accounts: $accountList}';
  }
}
