// In Dart, private instances or private members are those that can only be accessed from within the same file they are defined in. You make a member private by starting its name with an underscore (_).

class BankAccount {
  // Private instance variable
  double _balance;

  // Constructor
  BankAccount(this._balance);

  // Method to deposit money
  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
      print('Deposited: \$${amount.toStringAsFixed(2)}');
    } else {
      print('Invalid deposit amount');
    }
  }

  // Method to withdraw money
  void withdraw(double amount) {
    if (amount > 0 && amount <= _balance) {
      _balance -= amount;
      print('Withdrew: \$${amount.toStringAsFixed(2)}');
    } else {
      print('Invalid withdrawal amount or insufficient funds');
    }
  }

  // Method to check balance
  double getBalance() {
    return _balance;
  }
}

void main() {
  // Creating an instance of BankAccount
  BankAccount account = BankAccount(1000.00);

  // Accessing public methods
  account.deposit(250.00); // Output: Deposited: $250.00
  print('Total amount: ${account._balance}');
  account.withdraw(100.00); // Output: Withdrew: $100.00

  // Accessing balance through a public method
  print('Current Balance: \$${account.getBalance().toStringAsFixed(2)}'); // Output: Current Balance: $1150.00

  // Trying to access the private variable directly will result in an error
  // print(account._balance); // This line will cause a compilation error
}
