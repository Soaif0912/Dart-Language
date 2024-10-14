
void main(){

  // when we use final and const keyword to create a variable that variable value will be constant or unchangeable.
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
}

// variable inside class are called instance variable.

class user{
  final name = "Jake";
  // const age = 25;  // will throw error.
  static const age = 25;
}



  // Difference bettwen final and const keyword:

  // 1.
  // When you use const, you are saying that the value never changes and is fixed at compile time.
  // final means the value can only be set once, but it doesn’t have to be known until runtime (when the program is running).

  // 2. 
  // Others variable value can be assigned to final variable.
  // const variable must be initialized with constant value.

  // 3.
  // only static variable can be decalered as const inside class.
  // final variable can be decalered normally.
