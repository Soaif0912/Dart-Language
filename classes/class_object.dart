class Car {
  // Properties
  String brand;
  String model;
  int year;

  // Constructor
  Car(this.brand, this.model, this.year);

  // Method
  void displayInfo() {
    print('Car: $brand $model, Year: $year');
  }
}

// void main() {
//   // Creating instances (objects) of the Car class
//   Car car1 = Car('Toyota', 'Corolla', 2020);
//   Car car2 = Car('Honda', 'Civic', 2019);

//   // Calling methods on the objects
//   car1.displayInfo(); // Output: Car: Toyota Corolla, Year: 2020
//   car2.displayInfo(); // Output: Car: Honda Civic, Year: 2019
// }

class ElectricCar extends Car {
  int batteryCapacity;

  ElectricCar(String brand, String model, int year,
      {required this.batteryCapacity})
      : super(brand, model, year);

  void displayBattery() {
    print('Battery Capacity: $batteryCapacity kWh');
  }
}

class Demo1 {
  int num;
  String name;
  Demo1({required this.num, required this.name});
}

class Demo2 extends Demo1 {
  String address;
  Demo2({required int num, required String name, required this.address})
      : super(num: num, name: name);
}

void main() {
  ElectricCar tesla =
      ElectricCar('Tesla', 'Model S', 2021, batteryCapacity: 100);
  tesla.displayInfo(); // Output: Car: Tesla Model S, Year: 2021
  tesla.displayBattery(); // Output: Battery Capacity: 100 kWh
}
