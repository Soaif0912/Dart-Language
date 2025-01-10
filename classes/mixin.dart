
// In Dart, a mixin is a way to reuse code across multiple classes. Mixins allow you to define a set of methods and properties that can be included in other classes, which helps keep code modular and reusable. Unlike inheritance, a mixin does not form a strict "is-a" relationship but instead "mixes in" additional functionality to a class.

// Key Characteristics of Mixins
// Cannot be Instantiated: Mixins are designed to be included in other classes and cannot be instantiated on their own.
// Shared Functionality: A mixin allows you to add methods and properties to a class without needing to inherit from a base class.
// Multiple Mixins: Dart allows a class to use multiple mixins, which can help combine various behaviors from different sources.
// Lightweight: Mixins provide a way to keep the code lightweight, avoiding complex inheritance chains.
// Defining a Mixin
// In Dart, you use the mixin keyword to define a mixin. Mixins can contain methods and properties but cannot have constructors.


mixin Swimmable {
  void swim() {
    print("This creature can swim.");
  }
}

mixin Flyable {
  void fly() {
    print("This creature can fly.");
  }
}
// Here, Swimmable and Flyable are mixins that define behaviors for swimming and flying, respectively.

// Using Mixins in a Class
// To use a mixin, a class uses the with keyword followed by the mixin's name. You can use multiple mixins by separating them with commas.

class Fish with Swimmable {}

class Bird with Flyable {}

class Duck with Swimmable, Flyable {
  void quack() {
    print("Duck is quacking.");
  }
}
// In this example:

// Fish uses the Swimmable mixin and gains the ability to swim.
// Bird uses the Flyable mixin and gains the ability to fly.
// Duck uses both Swimmable and Flyable, so it can swim and fly.
// Usage Example


// Restricting Mixins with on
// You can restrict which classes can use a mixin by using the on keyword. This ensures that only certain types of classes can include the mixin.

class Animal {}

mixin Runnable on Animal {
  void run() {
    print("This creature can run.");
  }
}

class Dog extends Animal with Runnable {}
// class CatFish with Runnable {} // Error: Fish must extend Animal to use Runnable
// In this case, only classes that extend Animal can use the Runnable mixin, so Fish will throw an error if it tries to use it.


void main() {
  Fish fish = Fish();
  fish.swim(); // Output: This creature can swim.

  Bird bird = Bird();
  bird.fly(); // Output: This creature can fly.

  Duck duck = Duck();
  duck.swim(); // Output: This creature can swim.
  duck.fly(); // Output: This creature can fly.
  duck.quack(); // Output: Duck is quacking.

  Dog dog = Dog();
  dog.run();
}