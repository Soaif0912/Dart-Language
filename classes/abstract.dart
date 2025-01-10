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
}

class Cat extends Animal {
  @override
  void sound() {
    print("Cat meows");
  }
}

void main(){
    Dog dog = Dog();
    Cat cat = Cat();

    dog.sound();
    cat.sound();
}