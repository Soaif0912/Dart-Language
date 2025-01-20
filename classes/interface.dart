
abstract class A{
  void fun1(){
    print("object");
  }
}

class B{
  fun2(){}
}

class C implements A,B{
  @override
  void fun1() {
    print("inside func 1");
  }

  @override
  void fun2() {
    print("inside func 2");
  }
}

void main(){
  var obj = C();
  obj.fun1();
  obj.fun2();
}

// Any class that implements the interface must define all methods and properties declared in the interface.

//  Interface
// Dart doesn’t have a separate interface keyword. Instead, every class in Dart can act as an interface. To use a class as an interface, you implement it using the implements keyword.

// Key Points:
// When you implement a class, you must override all its methods (even if they have a body in the original class).
// Useful for defining strict contracts that classes must follow.
// You can implement multiple interfaces, supporting multiple inheritance.