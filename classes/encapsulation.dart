class BankAccount {
  double _balance = 0.0; // Private variable

  BankAccount(double initialBalance) {
    _balance = initialBalance;
  }

  void deposit(double amount) {
    _balance += amount;
  }

  double getBalance() {
    return _balance; // Indirect access to the private variable
  }
}

main() {
  var myBank = BankAccount(2000000.00);
  print(myBank._balance); // Where will work but on other file it will not work.
  print(myBank.getBalance());
}


// How Encapsulation Works in Dart
// In Dart, encapsulation is typically implemented using private variables and methods and controlled access to those variables with getter and setter methods.

// Private Variables
// In Dart, any variable or method starting with an underscore _ is considered private to the library it is defined in. This means other files or parts of the program cannot access it directly.


// Here:

// _balance is private because it starts with an underscore _
// We can't directly access _balance outside the BankAccount class in other file.
// Instead, we use a method getBalance() to access it indirectly.