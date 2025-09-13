void main() {
  // When we use final and const keyword to create a variable that variable value will be constant or unchangeable.
  final v1 = "Soaif";
  const v2 = "Ikbal";

  // v1 = "l";  // Will throw error
  // v2 = "k";  // Will throw error

  var a = 2;

  final x = a;
  //const y = a; // will thorw error

  var foo = const [];

  foo = [1, 2, 3];
  print(foo);

  print(user.age);
}

// Variable inside class are called instance variable.

class user {
  final name = "Jake";
  // const age = 25;  // will throw error.
  static const age = 25;
}

// const means the value is fixed forever and decided when the program is compiled.
// Instance variables (normal class fields) belong to each object created from the class.
// const values are the same for all objects, so they don’t belong to just one object—they belong to the whole class.
// Because of this, Dart requires const fields in a class to be marked as static, meaning they belong to the class itself, not to individual objects.



  // Difference bettwen final and const keyword:

  // 1.
  // When you use const, you are saying that the value never changes and is fixed at compile time.
  // Final means the value can only be set once, but it doesn’t have to be known until runtime (when the program is running).

  // 2. 
  // Others variable value can be assigned to final variable.
  // Const variable must be initialized with constant value.

  // 3.
  // Only static variable can be decalered as const inside class.
  // Final variable can be decalered normally.
  // final here means the variable list cannot point to a different object later.