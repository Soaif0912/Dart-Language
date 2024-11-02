// In Dart, a Set is a collection of unique items. It is an unordered collection, which means that the elements do not have a specific order, and it automatically eliminates duplicate elements. The Set class in Dart is part of the dart:core library and can be used to store elements where the order doesn't matter, and duplicates are not allowed.

// Key Features of Set in Dart:
// Unique Elements: A Set cannot contain duplicate values. If you try to add the same element more than once, it will only store one occurrence.
// Unordered: The elements in a Set are not stored in a specific order.
// Efficient Lookup: Searching for an element in a Set is faster compared to a List because a Set uses a hash-based implementation.
// Creating a Set
// You can create a Set in Dart using the literal syntax {} or by using the Set constructor.

void main() {
  // Creating a set using literals
  Set<int> numbers = {1, 2, 3, 4, 4}; // Duplicate '4' will be ignored

  print(numbers); // Output: {1, 2, 3, 4}

  for (int i in numbers) {
    print('= $i');
  }

  // Creating an empty set
  Set<String> names = Set();

  // Adding elements to the set
  names.add("Alice");
  names.add("Bob");
  names.add("Alice"); // Duplicate 'Alice' will be ignored

  print(names); // Output: {Alice, Bob}

  // Common Operations on Set
  // Adding elements:

  // add(): Adds a single element to the set.
  // addAll(): Adds multiple elements to the set.
  numbers.add(5);
  numbers.addAll([6, 7]);

  // Removing elements:

  // remove(): Removes an element from the set.
  // removeAll(): Removes multiple elements.
  // clear(): Removes all elements from the set.
  numbers.remove(2); // Removes '2' from the set

  // Checking for elements:
  // contains(): Returns true if the element is in the set.
  // containsAll(): Returns true if all specified elements are in the set.
  print(numbers.contains(3)); // true

  // Set Operations: Dart's Set class supports typical set operations such as union, intersection, and difference.
  // Union: Combines two sets, keeping unique elements.
  Set<int> set1 = {1, 2, 3};
  Set<int> set2 = {3, 4, 5};
  print(set1.union(set2)); // Output: {1, 2, 3, 4, 5}

  // Intersection: Returns the common elements between two sets.
  print(set1.intersection(set2)); // Output: {3}

  // Difference: Returns the elements present in one set but not the other.
  print(set1.difference(set2)); // Output: {1, 2}
}

// When to Use a Set?
// Use Set when you want to store unique items without duplicates.
// Use Set when the order of elements doesn't matter and you need efficient lookup or membership checking.
// In summary, Dart's Set is a collection that enforces uniqueness of its elements and provides fast lookups and typical set operations like union, intersection, and difference.