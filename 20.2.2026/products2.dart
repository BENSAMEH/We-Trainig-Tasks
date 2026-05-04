import 'dart:io';

void main() {
  Product shirt = Product("Shirt", 200, 1);
  Product pants = Product("Pants", 150, 2);
  Product shoes = Product("Shoes", 300, 3);
  Product top = Product("Top", 75, 4);

  List<Product> products = [shirt, pants, shoes, top];

  String choice = "Y";

  while (choice == "Y") {
    print("\nAvailable Products:");
    for (Product p in products) {
      print("${p.number}- ${p.name} | Price: ${p.price}");
    }

    print("Enter Order Number:");
    int orderNumber = int.parse(stdin.readLineSync()!);

    for (Product p in products) {
      if (orderNumber == p.number) {
        print("Enter Quantity for ${p.name}:");
        int q = int.parse(stdin.readLineSync()!);
        if (q > 0) {
          p.quantity += q;
        }else{print("invalid number");}
      }
    }

    print("Another Order? Y/N");
    choice = stdin.readLineSync()!;
  }

  double total = 0;

  print("\n==========");

  for (Product p in products) {
    if (p.quantity > 0) {
      double itemTotal = p.price * p.quantity;
      total += itemTotal;

      print("${p.name} Quantity : ${p.quantity} Total = $itemTotal");
    }
  }

  print("Total Price = $total");
}

class Product {
  String name;
  double price;

  int quantity = 0;
  int number;

  Product(this.name, this.price, this.number);
}
