
// finally Block
// The finally block is executed whether an exception occurs or not. It is commonly used for cleanup operations.


void main() {
  try {
    int result = 12 ~/ 0;
  } catch (e) {
    print('Caught an exception: $e');
  } finally {
    print('This code runs regardless of exception.');
  }
}