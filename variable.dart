void main() {
  // print("First code using dart language");

  // int a = 10;
  // double b = 10.10;

  // print(a);
  // print(b);

  // bool permission = true;
  // print(permission);

  // var x; // if doesn't assign any value and datatype is also not assigned it will automaticly store null value .
  // print(x);

  // String --> Number
  int num1 = 10;
  int num2 = int.parse("20");
  print(num1 + num2);

  // String --> Double
  int n1 = 10;
  double n2 = double.parse("20.35");
  print(n1 + n2);

  // double --> string
  String numValue = 50.22.toString();
  print(numValue);
  print(numValue.runtimeType);
}
