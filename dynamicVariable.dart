void main() {
  dynamic a = 10;
  print(a.runtimeType);
  // When we use dynamic keyword to create a variable, we can assign any datatype value to the variable and also later we can change to any datatype value.

  a = "Hello";
  print(a.runtimeType);

  a = false;
  print(a.runtimeType);
}
