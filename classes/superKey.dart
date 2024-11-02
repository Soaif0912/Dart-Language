class A{
  var x = 5;
  void display(){
    print('inside A class.');
  }
}

class B extends A{
  var x = 5;
  void display(){
    print(super.x);
    super.display();
  }
}

void main(){
  var obj = B();
  obj.display();
}