
// on and catch
// The on keyword is used to specify the type of exception to catch. You can use on to handle specific exceptions.


void main() {
  try {
    int result = 12 ~/ 0;
  } on IntegerDivisionByZeroException {
    print('Cannot divide by zero!');
  } catch (e) {
    print('Caught an exception: $e');
  }
}