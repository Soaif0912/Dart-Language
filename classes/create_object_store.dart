class Car {
  // Properties
  String brand;
  String model;
  int year;

  // Static list to store all Car instances
  static List<Car> allCars = [];

  // Constructor
  Car(this.brand, this.model, this.year) {
    allCars.add(this);  // Add each new instance to the list
  }

  // Method
  void displayInfo() {
    print('Car: $brand $model, Year: $year');
  }
}

class ElectricCar extends Car {
  int batteryCapacity;

  ElectricCar(String brand, String model, int year, this.batteryCapacity)
      : super(brand, model, year);

  void displayBattery() {
    print('Battery Capacity: $batteryCapacity kWh');
  }

  // Method to display all Car and ElectricCar instances
  static void displayAllCars() {
    for (var car in Car.allCars) {
      car.displayInfo();
      if (car is ElectricCar) {
        car.displayBattery();
      }
      print('---');  // Separator for clarity
    }
  }
}

void main() {
  Car car1 = Car('Toyota', 'Corolla', 2020);
  Car car2 = Car('Honda', 'Civic', 2019);
  ElectricCar tesla = ElectricCar('Tesla', 'Model S', 2021, 100);
  ElectricCar nissanLeaf = ElectricCar('Nissan', 'Leaf', 2022, 40);

  // Display all instances
  ElectricCar.displayAllCars();
}
