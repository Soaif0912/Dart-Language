
// try and catch
// The try block contains the code that might throw an exception, and the catch block handles it.

void main() {
  
  try {
    int result = 12 ~/ 0;  // This will throw an exception (division by zero)
  } catch (e) {
    print('Caught an exception: $e');
  }
}