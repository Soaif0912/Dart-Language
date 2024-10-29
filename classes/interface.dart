
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