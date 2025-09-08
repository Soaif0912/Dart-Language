//When a child class needs to call the parent’s constructor to initialize its inherited properties.

// In Dart, the super keyword is used to refer to the superclass of a class. It is primarily used to call:

// A superclass constructor.
// A superclass method that has been overridden in the subclass.
// The super keyword helps in invoking methods or constructors from the parent class, providing a way to build on or modify inherited behavior.

// 1. Using super to Call a Superclass Constructor
// When a subclass constructor calls the superclass constructor, you use the super keyword. This is useful for initializing properties defined in the superclass.

// Example:

class Animal {
  String name;

  Animal(this.name); // Superclass constructor
}

class Dog extends Animal {
  String breed;

  Dog(String name, this.breed)
      : super(name); // Calling the superclass constructor
}

void main() {
  Dog dog = Dog("Buddy", "Golden Retriever");
  print("Dog's name: ${dog.name}, Breed: ${dog.breed}");
}

// Output:
// Dog's name: Buddy, Breed: Golden Retriever


// 2. Using super to Call a Superclass Method
// When a subclass overrides a method from the superclass, you can still access the original method using the super keyword.

// Example:

// class Animal {
//   void sound() {
//     print("Animal makes a sound");
//   }
// }

// class Dog extends Animal {
//   @override
//   void sound() {
//     super.sound(); // Calling the superclass method
//     print("Dog barks");
//   }
// }

// void main() {
//   Dog dog = Dog();
//   dog.sound();
// }

// Output:

// Animal makes a sound
// Dog barks

// 3. Using super to Access Superclass Properties
// You can also use super to refer to properties of the superclass.

// Example:

// class Animal {
//   String sound = "Generic Animal Sound";

//   void makeSound() {
//     print(sound);
//   }
// }

// class Dog extends Animal {
//   String sound = "Bark";

//   void makeSound() {
//     print("Dog sound: $sound");
//     print("Superclass sound: ${super.sound}");
//   }
// }

// void main() {
//   Dog dog = Dog();
//   dog.makeSound();
// }

// Output:

// Dog sound: Bark
// Superclass sound: Generic Animal Sound
// Key Points:
// Use super in a constructor to initialize fields from the superclass.
// Use super.methodName() to call methods from the superclass that are overridden.
// Use super.propertyName to access superclass properties if they are shadowed by subclass properties.
// This approach allows you to extend functionality while maintaining access to the base class implementation.