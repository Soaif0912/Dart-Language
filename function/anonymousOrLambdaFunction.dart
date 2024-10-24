
void main(){

  // (String name){   
  //   print(name);
  // };
  // This is a anonymous function, to access this function we have to assign it a variable.

  var myName = (String name){
    print(name);
  };

  // Creating anonymous function using function class 
  Function roll = (int roll){
    print(roll);
  };

  // these function are called lambda or anonymous function.

  myName("Soaif");
  roll(55);

}