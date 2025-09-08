abstract class Animal {
  // Abstract method (no implementation)
  void sound();

  // Non-abstract method (with implementation)
  void sleep() {
    print("The animal is sleeping.");
  }
}

class Dog extends Animal {
  @override
  void sound() {
    print("Dog barks");
  }

  @override
  void sleep() {
    print("All animal is sleeping");
  }
}

class Cat extends Animal {
  @override
  void sound() {
    print("Cat meows");
  }
}

void main() {
  Dog dog = Dog();
  dog.sound(); // Output: Dog barks
  dog.sleep(); // Output: The animal is sleeping.

  Cat cat = Cat();
  cat.sound(); // Output: Cat meows
  cat.sleep(); // Output: The animal is sleeping.
}

// In Dart, an abstract class is a class that cannot be instantiated directly and is typically used to define a blueprint for other classes. Abstract classes are especially useful when you want to specify a contract (set of methods and properties) that other classes must follow without providing a full implementation.

// Key Characteristics of an Abstract Class :

// Cannot be Instantiated: You cannot create an instance of an abstract class.
// Can Contain Abstract Methods: An abstract class can define methods without implementations, which means that any subclass must implement these methods.
// Can Contain Non-Abstract Methods: Unlike an interface, an abstract class can also contain fully implemented methods, which means you can provide common functionality to subclasses.
// Usage: Abstract classes are commonly used when you want to share code between closely related classes.
