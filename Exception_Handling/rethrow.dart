
// Using rethrow
// The rethrow keyword allows you to catch an exception and then propagate it again for higher-level handling.


void function1() {
  try {
    throw FormatException('Invalid format');
  } catch (e) {
    print('Caught in function1');
    rethrow;  // Propagate the exception
  }
}

void main() {
  try {
    function1();
  } catch (e) {
    print('Caught in main: $e');
  }
}