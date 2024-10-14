void main(){
  var a = 5;
  a > 1 ? print(true) : print (false);

  var x = 10, y = 20;
  int value = x ?? y;  // Here the value will be taken where variable value is not null, if both value is not null then first value will be taken.
  print(value);
}