void main() {
  // Creating a List
  List<int> numbers = [10, 20, 30, 40, 50];

  // 1. Adding Elements
  numbers.add(60); // Adds 60 to the end
  numbers.addAll([70, 80]); // Adds multiple elements
  numbers.insert(1, 15); // Inserts 15 at index 1
  numbers.insertAll(0, [1, 2]); // Inserts multiple elements starting at index 0

  // 2. Removing Elements
  numbers.remove(80); // Removes element 80
  numbers.removeAt(0); // Removes element at index 0
  numbers.removeLast(); // Removes the last element
  numbers.removeWhere((item) => item > 100); // Removes elements based on condition
  numbers.retainWhere((item) => item >= 10); // Retains elements based on condition

  // 3. Accessing Elements & Properties
  print('First element: ${numbers.first}');
  print('Last element: ${numbers.last}');
  print('Length: ${numbers.length}');
  print('Reversed: ${numbers.reversed}');
  print('Is empty: ${numbers.isEmpty}');
  print('Is not empty: ${numbers.isNotEmpty}');
  print('Runtime type: ${numbers.runtimeType}');

  // 4. Searching & Checking Elements
  print('Contains 20: ${numbers.contains(20)}');
  print('Index of 30: ${numbers.indexOf(30)}');
  print('Last index of 20: ${numbers.lastIndexOf(20)}');
  print('Index matching condition: ${numbers.indexWhere((x) => x > 25)}');
  print('First element > 20: ${numbers.firstWhere((x) => x > 20)}');
  print('Single element or null: ${numbers.singleWhere((x) => x == 30)}');

  // 5. Utility & Manipulation
  numbers.sort(); // Sorts the list in ascending order
  numbers.shuffle(); // Randomly shuffles elements
  List<int> sub = numbers.sublist(1, 3); // Extracts sublist from index 1 to 2
  numbers.fillRange(0, 2, 99); // Replaces range with specified value
  numbers.replaceRange(0, 1, [5, 6]); // Replaces range with another list

  // 6. Functional / Iteration Methods
  numbers.forEach((item) => print(item));
  var mapped = numbers.map((e) => e * 2).toList();
  var filtered = numbers.where((e) => e > 10).toList();
  bool anyGreaterThan50 = numbers.any((e) => e > 50);
  bool everyPositive = numbers.every((e) => e > 0);
  int sum = numbers.reduce((value, element) => value + element);

  // 7. Clearing
  numbers.clear(); // Removes all elements from the list
  print('After clear, is empty: ${numbers.isEmpty}');
}