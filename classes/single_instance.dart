// A single instance in Dart refers to having only one object of a class that can be used throughout your app. This is also called the singleton pattern. It ensures that the same instance of a class is shared wherever it's needed, rather than creating a new instance every time.

// Why Use a Singleton?
// To save memory.
// To share the same instance across the app.
// To ensure consistent state and behavior.


class Logger {
  // 1. Create a private static instance of the class.
  static final Logger _instance = Logger._internal();

  // 2. Provide a private named constructor.
  Logger._internal();

  // 3. Create a factory constructor that returns the single instance.
  factory Logger() {
    return _instance;
  }

  // Example method to log messages.
  void log(String message) {
    print('Log: $message');
  }
}

void main() {
  // Access the single instance of Logger.
  var logger1 = Logger();
  var logger2 = Logger();

  // Check if both instances are the same.
  print(logger1 == logger2); // true

  // Use the logger instance.
  logger1.log("This is a message.");
}


// Explanation:
// Private Static Instance (_instance):
// This is the only instance of the class, and it’s created once when the class is loaded.

// Private Constructor (_internal):
// This ensures the class cannot be instantiated from outside. Only the class itself can call this constructor.

// Factory Constructor (factory Logger()):
// This checks if the instance already exists. If yes, it returns the existing instance. If not, it creates and returns it (though it’s already created here in the static instance).