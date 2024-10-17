// In Dart, a Map is a collection of key-value pairs, where each key is unique, and it is used to associate one value with one key. It is commonly referred to as a dictionary or hash table in other programming languages. The Map class is part of the dart:core library and is used when you need to access values by keys.

// Key Features of Map in Dart:
// Key-Value Pairing: Each element in a Map is a key-value pair. You use the key to access the corresponding value.
// Unique Keys: All keys in a Map must be unique. However, values can be duplicated.
// Dynamic Size: A Map can grow or shrink at runtime as keys and values are added or removed.
// Creating a Map
// You can create a Map in Dart using either the literal syntax ({}) or the Map constructor.


void main() {
  // Creating a map using literals
  Map<String, int> ages = {
    "Alice": 25,
    "Bob": 30,
    "Charlie": 35,
  };

  // Creating an empty map
  Map<String, String> countries = Map();
  
  // Adding key-value pairs to the map
  countries['India'] = 'Paris';
  countries['USA'] = 'Washington, D.C.';
  
  // print(ages);  // Output: {Alice: 25, Bob: 30, Charlie: 35}
  // print(countries);  // Output: {India: New Delhi, USA: Washington, D.C.}

  // Common Operations on Map
  // Accessing Values:

  // You can retrieve a value from the map using its key.
  // If the key doesn't exist in the map, null is returned by default unless specified.

  print(ages['Alice']);  // Output: 25
  print(countries['India']);  // Output: New Delhi
  // Adding or Updating Key-Value Pairs:

  // You can add new key-value pairs or update the value of an existing key by assigning it.

  ages['David'] = 40;  // Adds a new key 'David'
  ages['Alice'] = 26;  // Updates value for the key 'Alice'
  print(ages);  // Output: {Alice: 26, Bob: 30, Charlie: 35, David: 40}


  // Removing Key-Value Pairs:
  // remove(key): Removes the key and its associated value from the map.
  // clear(): Removes all key-value pairs from the map.
  ages.remove('Bob');  // Removes 'Bob' from the map
  // ages.clear();  // Clears the entire map


  // Checking for Existence:
  // containsKey(key): Returns true if the key exists in the map.
  // containsValue(value): Returns true if the value exists in the map.
  print(ages.containsKey('Alice'));  // Output: true
  print(countries.containsValue('Paris'));  // Output: false


  // Iterating Over a Map:
  // You can loop through a Map to access both keys and values.
  for (var entry in ages.entries) {
    print('${entry.key}: ${entry.value}');
  }

  // Output:
  // Alice: 26
  // Charlie: 35
  // David: 40
  // Map Properties:

  // keys: Returns an iterable of all the keys in the map.
  // values: Returns an iterable of all the values in the map.
  // length: Returns the number of key-value pairs in the map.


  print(ages.keys);    // Output: (Alice, Charlie, David)
  print(ages.values);  // Output: (26, 35, 40)
  print(ages.length);  // Output: 3
  // Map Methods
  // putIfAbsent(): Adds a key-value pair if the key doesn't already exist in the map.


  ages.putIfAbsent('Emma', () => 28);  // Adds 'Emma' with value 28
  // update(): Updates the value of a key if it exists.


  ages.update('David', (value) => value + 1);  // Increment 'David's age by 1
  // forEach(): Applies a function to each key-value pair in the map.


  ages.forEach((key, value) {
    print('$key is $value years old.');
  });

}
// When to Use a Map?
// Use a Map when you need to look up values by a specific key efficiently.
// When you have a set of data that needs to be stored as key-value pairs, like a dictionary or database record.
// In summary, Dart's Map provides a flexible and efficient way to store and manage key-value pairs. It's an essential data structure when you need fast lookups, updates, and deletions based on unique keys.