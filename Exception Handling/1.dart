// In Dart, exception handling is a mechanism to deal with runtime errors gracefully. When an error occurs during the execution of a program, Dart provides ways to "catch" and handle these errors so that the program doesn't crash unexpectedly. Dart uses a combination of try, catch, on, and finally blocks to handle exceptions.

// Key Elements of Exception Handling in Dart
// try block: The code that may throw an exception is placed inside the try block.
// catch block: Catches the exception and allows you to handle it.
// on block: Used to catch a specific type of exception.
// finally block: Executes regardless of whether an exception occurred or not. Useful for cleanup code.
// Types of Exceptions
// Built-in Exceptions: Dart provides a few standard exceptions like FormatException, IOException, etc.
// Custom Exceptions: You can create your own exceptions by extending the Exception class.


// Common Exceptions in Dart:

// FormatException: Thrown when a string or input is improperly formatted.
void main() {
  try {
    int number = int.parse('InvalidNumber');  // Throws FormatException
  } on FormatException {
    print('Invalid format');
  }
}


// IntegerDivisionByZeroException: Thrown when dividing an integer by zero.
// void main() {
//   try {
//     int result = 12 ~/ 0;
//   } on IntegerDivisionByZeroException {
//     print('Division by zero');
//   }
// }


// NullThrownError: Thrown when null is thrown explicitly as an exception.
// void main() {
//   try {
//     throw null;
//   } on NullThrownError {
//     print('Null thrown as exception');
//   }
// }


// Summary of Exception Handling
// try block: Encapsulates code that might throw an exception.
// on block: Catches specific exceptions.
// catch block: Catches exceptions of any type.
// finally block: Executes whether an exception is thrown or not.
// rethrow: Propagates a caught exception for further handling.
// This structure ensures that your code can handle unexpected runtime errors gracefully, preventing crashes and allowing you to take corrective action when needed.