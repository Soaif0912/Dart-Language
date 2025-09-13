main() {
  var num = 2;
  final int a = num;
  num = 5;
  print(a);

  final List<int> list = [1, 2, 3];
  list.add(4);
  print(list);
}
