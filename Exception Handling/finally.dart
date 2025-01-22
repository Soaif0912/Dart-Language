
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

  try {
    print('Opening file...');
    throw Exception('An error occurred!'); // Simulating an error
  } catch (e) {
    print('Caught exception: $e');
  } finally {
    print('Closing file...');
  }

  try {
    print('Opening file...');
    print('File operation successful.');
  } catch (e) {
    print('Caught exception: $e');
  } finally {
    print('Closing file...');
  }

}

// Key Points:
// The finally block always runs after try and catch, regardless of whether an exception occurred.
// Use finally for cleanup tasks like closing files, network connections, or freeing resources.
// Omitting resource cleanup (like closing the client) can lead to memory or resource leaks.