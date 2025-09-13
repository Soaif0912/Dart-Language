import 'typeDef.dart';

Future<void> profileName() async {
  await Future.delayed(Duration(seconds: 2));
  print("Function completed");
}

void main() async {
  await profileName();
  print('I am first');
}

// Calling fetchData() will wait 2 seconds and then print "Data fetched".<Void> means The function does not return any data.
