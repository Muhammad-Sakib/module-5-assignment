class Car {
  String brand;
  String model;
  int year;
  double milesDriven = 0;
  static int numberOfCars = 0;
  Car({
    required this.brand,
    required this.model,
    required this.year,
  }) {
    numberOfCars++;
  }

  void drive(double miles) {
    milesDriven = milesDriven + miles;
  }

  double getMilesDriven() {
    return milesDriven;
  }

  String getBrand() {
    return brand;
  }

  String getModel() {
    return model;
  }

  int getYear() {
    return year;
  }

  int getAge() {
    return DateTime.now().year - year;
  }
}

void main() {
  Car carOne = Car(
    brand: "Toyota",
    model: "Camry",
    year: 2020,
  );

  Car carTwo = Car(
    brand: "Honda",
    model: "Civic",
    year: 2022,
  );

  Car carThree = Car(
    brand: "Ford",
    model: "Mustang",
    year: 2018,
  );

  carOne.drive(50000);
  carTwo.drive(20000);
  carThree.drive(80000);
  print(
      "Car brand: ${carOne.getBrand()} model: ${carOne.getModel()} year: ${carOne.getYear()} miles driven: ${carOne.getMilesDriven()}\n");
  print(
      "Car brand: ${carTwo.getBrand()} model: ${carTwo.getModel()} year: ${carTwo.getYear()} miles driven: ${carTwo.getMilesDriven()}\n");
  print(
      "Car brand: ${carThree.getBrand()} model: ${carThree.getModel()} year: ${carThree.getYear()} miles driven: ${carThree.getMilesDriven()}\n");

  print(
      "\n${carOne.getBrand()} age: ${carOne.getAge()}, ${carTwo.getBrand()} age: ${carTwo.getAge()}, ${carThree.getBrand()} age: ${carThree.getAge()} \n");
  print("Total number or cars: ${Car.numberOfCars}");
}
