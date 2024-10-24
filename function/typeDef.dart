typedef func = Function(int a);

First(int a){
  print("First function return ${a + 1}");
}

Second(int a){
  print("Second function return ${a + 2}");
}

void main(){
  func x = First;
  x(5);

  x = Second;
  x(5);
}