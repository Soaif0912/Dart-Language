
// Custom Exceptions
// You can create custom exceptions in Dart by extending the Exception class.


class MyCustomException implements Exception {
  String cause;
  MyCustomException(this.cause);
}

void main() {
  try {
    throw MyCustomException('This is a custom exception');
  } catch (e) {
    print('Caught: ${e}');
  }
}