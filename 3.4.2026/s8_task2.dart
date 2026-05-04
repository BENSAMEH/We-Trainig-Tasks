import 'dart:io';
import 'car.dart';

void main() {
  List<Car> cars = [];

  print("Enter Number Of Cars:");
  int carNumber = int.parse(stdin.readLineSync()!);

  double totalPrice = 0;

  for (int i = 0; i < carNumber; i++) {
    Car car = Car();

    print("Enter Car ${i + 1} Info:");
    car.inputData();

    cars.add(car);

    totalPrice += car.price!;
  }

  print("All Cars Info:");

  for (var car in cars) {
    car.display();
  }print("Each Car Price Before and After Discount:");

  for (var car in cars) {

    double priceBefore = car.price!;
    double priceAfter = priceBefore -(priceBefore *.15);

    print(
        "Car ${car.model} Price Before = $priceBefore \$ "
            " | After 15% Discount = $priceAfter \$");
  }
  List<double> carPrices = [];
  for (Car car in cars) {
    carPrices.add(car.price!);
  }
  carPrices.sort();
  double maxPrice = carPrices.last;
  double minPrice = carPrices.first;
  String maxCar="";
  String minCar="";
  for(Car car in cars){
    if (car.price==maxPrice){
      maxCar=car.model!;
    }
    if(car.price==minPrice){
      minCar=car.model!;
    }

  }

  print("Total Price = $totalPrice");

  double discountTotal = totalPrice - (totalPrice * 0.15);
  print("Total After 15% Discount = $discountTotal\$");

  print("Max Price is Car ${maxCar} : ${maxPrice }\$ ");
  print("Min Price is Car ${minCar} : ${minPrice }\$ ");

}
