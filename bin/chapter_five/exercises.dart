// 1.)
// Create a base class named "Vehicle" with the following attributes: model, year, and type (e.g. car, truck, motorbike).
// Create subclasses for each type of vehicle: "Car", "Truck", and "Motorbike".
// Override the toString() method in each subclass to display the vehicle's information (model, year, and type).
// In the main function, create objects for each type of vehicle and print their information using the toString() method.
// Create a method named "startEngine" in the base class "Vehicle". In each subclass, override the method to print a unique message that corresponds to the type of vehicle.
// Call the "startEngine" method on each object and observe the unique message for each type of vehicle.


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




















// hints for 2.):

// 1. Start by creating the Customer class with attributes for name, address,
//    and a list of accounts.
// 2. Create the Account class with attributes for account number,
//    balance, and interest rate. Add methods for deposit and withdrawal.
// 3. Create two subclasses of the Account class: Savings and Checking.
//     Override the interest rate in each subclass.
// 4. Add methods to the Customer class for adding and removing accounts.
// 5. In the main function, create a few customers and add savings and 
//      checking accounts to each customer. Demonstrate the use of polymorphism 
//      by accessing the deposit and withdrawal methods through the Account class reference.

// you will need something like this main function to get the code running
// void main() {
//   Customer customer1 = Customer('John Doe', '123 Main St');
//   Customer customer2 = Customer('Jane Doe', '456 Oak Ave');

//   Savings savings1 = Savings(123456, 1000.00);
//   Checking checking1 = Checking(789012, 2000.00);

//   customer1.addAccount(savings1);
//   customer1.addAccount(checking1);

//   customer2.addAccount(Savings(234567, 1500.00));
//   customer2.addAccount(Checking(890123, 2500.00));

//   for (Customer customer in [customer1, customer2]) {
//     for (Account account in customer.accounts) {
//       account.deposit(100.00);
//       account.withdraw(50.00);
//       print('Account number: ${account.accountNumber}');
//       print('Balance: ${account.balance}');
//       print('Interest rate: ${account.interestRate}');
//       print('');
//     }
//   }
// }



