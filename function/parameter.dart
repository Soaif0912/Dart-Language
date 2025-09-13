void main() {
  // Name parameter:
  // display("soaif", location: "Baruipur"); // Name parameter argument should be given with parameter name and it can be placed anywhere.

  // Optional position parameter:
  student('Soaif', 25,
      101); // Optional position parameter argument should be given in order.

  // Default parameter with name parameter:
  teacher("Jack", subject: 'Economices');

  // Default parameter with optional position parameter:
  staf("Harson");
}

// Name parameter:
// When we write parameter inside {}, this is called name parameter and it's argument is optional, if does'nt set as required.
display(name, {age, required location}) {
  print("name is: $name");
  print("name is: $age");
  print("name is: $location");
}

// Option positional parameter:
student(String name, [int? age, int? roll]) {
  // when define parameter inside [], these parameter argument are optional.
  print("Name is: $name");
  print("Age is: $age");
  print("Roll is: $roll");
}

// Default parameter with name parameter:
teacher(String name, {String subject = "science", int age = 25}) {
  print("Name is: $name");
  print("Subject is: $subject");
  print("Age is: $age");
}

// Default parameter with optional position parameter:
staf(String name, [String subject = "science", int age = 25]) {
  print("Name is: $name");
  print("Subject is: $subject");
  print("Age is: $age");
}

// Rules:
// 1. Deault parameter can't be used with required parameter, must be used with name{} or optional position[] parameter.
// 2. name and optional positional parameter can't be used in a single function.
