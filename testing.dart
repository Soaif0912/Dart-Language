main() {
  var num = 2;
  final int a = num;
  num = 5;
  print(a);

  final List<int> list = [1, 2, 3];
  list.add(4);
  print(list);

  print('hi ${num + 1} there');
  
  test(String name, {age = 26, required city}){
    print('name: $name, age: $age, city: $city');
  }

  test('soaif', city: 'New York all the best');
}
