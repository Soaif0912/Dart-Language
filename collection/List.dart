

void main(){
  List name = ["Soaif", "Asif", "Sahil"];
  print(name);

  // List with type casting
  List<int> roll = [40,50,60,70];
  print(roll);

  // Adding value
  roll.add(66);
  print(roll);

  // Removing value
  roll.remove(40);
  print(roll);

  // Updating value
  roll[0] = 11;
  print(roll);

  // Using loop to display List element
  for(int i in roll ){
    print(i);
  }

  // constant List
  // Constant List don't let update, remove, add element.
  List details = const['Soaif',25];
  print(details);

}