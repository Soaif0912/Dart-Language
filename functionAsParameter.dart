void main(){

  func(25, name);

  // calling function inside function
  var total = person();
  print(total(10,20,30));
}

Function name = (String n){
  return n;
};

void func(int age, Function n){
  print('$age ${n('soaif')}'); 
}


// Function inside Function

Function person(){
  var student = (int a, int b, int c){
    return a+b+c;
  };

  return student;
}