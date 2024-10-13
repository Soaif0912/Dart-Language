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

  // String? y; // = ? using this null safety
  // print(y);

  var a = 0;
  var b = ++a; // Increment a before b gets its value.
  assert(a == 0); // 1 == 1
  //  dart --enable-asserts run your_file.dart  => to active assert have to run file this way.

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
