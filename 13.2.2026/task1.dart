import 'dart:io';

main() {
  print("Enter Number Of Shirts");
  int shirtQuantity = int.parse(stdin.readLineSync()!);
  print("Enter Number Of Pants");
  int pantsQuantity = int.parse(stdin.readLineSync()!);
  print("Enter Number Of Shoes");
  int shoesQuantity = int.parse(stdin.readLineSync()!);
  print("Enter Number Of Tops");
  int topQuantity = int.parse(stdin.readLineSync()!);

  Product shirt = Product("Shirt", shirtQuantity, 25.50, 15);
  Product pants = Product("Pants", pantsQuantity, 30.25, 7.5);
  Product shoes = Product("Shoes", shoesQuantity, 90, 10);
  Product top = Product("Top", topQuantity, 45.75, 15);

  double totalPriceAfterDiscount =
      shirt.calculatePriceAfterDiscount() +
      pants.calculatePriceAfterDiscount() +
      shoes.calculatePriceAfterDiscount() +
      top.calculatePriceAfterDiscount();
  double totalPriceBeforeDiscount =
      shirt.calculatePriceBeforeDiscount() +
      pants.calculatePriceBeforeDiscount() +
      shoes.calculatePriceBeforeDiscount() +
      top.calculatePriceBeforeDiscount();

  print(
      "${shirt.name} | Qty: ${shirt.quantity} | Before: ${shirt.calculatePriceBeforeDiscount()} | After: ${shirt.calculatePriceAfterDiscount()}");
  print(
      "${pants.name} | Qty: ${pants.quantity} | Before: ${pants.calculatePriceBeforeDiscount()} | After: ${pants.calculatePriceAfterDiscount()}");
  print(
      "${shoes.name} | Qty: ${shoes.quantity} | Before: ${shoes.calculatePriceBeforeDiscount()} | After: ${shoes.calculatePriceAfterDiscount()}");
  print(
      "${top.name} | Qty: ${top.quantity} | Before: ${top.calculatePriceBeforeDiscount()} | After: ${top.calculatePriceAfterDiscount()}");
  print("Total Price Before Discount : $totalPriceBeforeDiscount");
  print("Total Price After Discount : $totalPriceAfterDiscount");
}

class Product {
  String name;
  double price;
  double discount;
  int quantity;


  Product(this.name, this.quantity, this.price, this.discount){
    calculatePriceAfterDiscount();
    calculatePriceBeforeDiscount();
  }

  double calculatePriceBeforeDiscount() {
   return price * quantity;
  }

  double calculatePriceAfterDiscount() {
    if (quantity >= 5) {
     return  quantity * (price - (price * discount / 100));
    } else{
      return calculatePriceBeforeDiscount();
    }
  }
}
