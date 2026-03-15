
// Multiple on Blocks
// You can use multiple on blocks to handle different types of exceptions separately.


void main() {
  try {
    int result = 12 ~/ 0;
  } on IntegerDivisionByZeroException {
    print('Division by zero');
  } on FormatException {
    print('Invalid format');
  } catch (e) {
    print('Caught an exception: $e');
  }
}
