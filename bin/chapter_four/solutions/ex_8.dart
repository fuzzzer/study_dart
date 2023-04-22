// 8. Create a class called BankAccount with properties such as accountNumber, balance, and owner.
//Add methods called deposit and withdraw that allow the user to deposit or withdraw money from the account.
import 'dart:io';

void main() {
  BankAccount myBog = BankAccount(
      accountNumber: 2000009, balance: 500, owner: "Sandro", cvv: 499);

  //print(
  //  'You have withdrawn: ${myBog.withdraw()}. Your current balance is ${myBog.balance}');
  print(myBog.deposit());
  print(myBog.balance);
}

class BankAccount {
  int accountNumber;
  double balance;
  String owner;
  int cvv;

  BankAccount(
      {required this.accountNumber,
      required this.balance,
      required this.owner,
      required this.cvv});

  @override
  String toString() {
    return 'Account information: {Account number: $accountNumber, Balance: $balance, Owner: $owner}';
  }

  int? withdraw() {
    int moneyToWithdraw = 0;
    int correctCvv = cvv;

    for (int i = 3; i > 0; i--) {
      print("Please enter your cvv");
      String userInput = stdin.readLineSync()!;
      int cvvUser = int.parse(userInput);
      if (cvvUser != correctCvv) {
        print(
            "Wrong cvv number, you have ${i - 1} tries left, please enter again:");
        if (i - 1 < 1) {
          print("Your card is blocked now.");
          break;
        }
      } else {
        while (true) {
          print("Specify amount of money you'd like to withdraw:");
          String userInput2 = stdin.readLineSync()!;
          moneyToWithdraw = int.parse(userInput2);
          if (moneyToWithdraw > balance) {
            print("Sorry, not enough money on your account:");
            print("Your current balance is: $balance");
            print("Please enter amount in range of: $balance");
          } else if (moneyToWithdraw == 0) {
            break;
          } else {
            balance += moneyToWithdraw;

            break;
          }
        }
        break;
      }
    }

    return moneyToWithdraw;
  }

  int? deposit() {
    int correctCvv = cvv;
    int moneyToDeposit = 0;
    for (int k = 3; k > 0; k--) {
      print("Please enter your cvv: ");
      String userInput2 = stdin.readLineSync()!;
      int cvvUser = int.parse(userInput2);
      if (cvvUser != correctCvv) {
        print("Wrong cvv numbr, you have ${k - 1} tries left: ");
        if (k - 1 == 0) {
          print("Your card is blocked now.");
          break;
        }
      } else {
        print("How much would you like to deposit?:");
        String userInput3 = stdin.readLineSync()!;
        moneyToDeposit = int.parse(userInput3);
        balance += moneyToDeposit;
        print('You have $balance dollars left on your account');
        break;
      }
    }
    return moneyToDeposit;
  }
}
