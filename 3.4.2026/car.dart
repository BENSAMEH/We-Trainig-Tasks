import 'dart:io';

class Car {
  int? code;
  String? color;
  double? price;
  String? model;

  void inputData() {
    print("Enter Car Code:");
    code = int.parse(stdin.readLineSync()!);

    print("Enter Car Color:");
    color = stdin.readLineSync();

    print("Enter Car Price:");
    price = double.parse(stdin.readLineSync()!);

    print("Enter Car Model:");
    model = stdin.readLineSync();
  }

  void display() {
    print("Code: $code");
    print("Color: $color");
    print("Price: $price \$");
    print("Model: $model");
    print("----------------------");
  }
}