
// catch with Stack Trace
// You can capture the stack trace to get more details about where the exception occurred.


void main() {
  try {
    int result = 12 ~/ 0;
  } catch (e, s) {
    print('Exception: $e');
    print('Stack trace: $s');
  }
}