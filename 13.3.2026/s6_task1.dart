import 'dart:io';

void main() {
  Map<dynamic, int> myMap = {};

  while (true) {
    print("\n1- Add value");
    print("2- Remove value");
    print("3- Update value");
    print("4- Show values");
    print("5- Search value");
    print("6- Exit");

    int choice = int.parse(stdin.readLineSync()!);

    switch (choice) {


      case 1:
        print("Number of values?");
        int n = int.parse(stdin.readLineSync()!);

        for (int i = 0; i < n; i++) {
          print("Enter key:");
          String key = stdin.readLineSync()!;

          print("Enter value:");
          int value = int.parse(stdin.readLineSync()!);

          myMap[key] = value;
        }
        break;


      case 2:
        print("a) Remove by value");
        print("b) Remove by key");

        String option = stdin.readLineSync()!;

        if (option == 'a') {
          print("Enter value:");
          int value = int.parse(stdin.readLineSync()!);

          if (myMap.containsValue(value)) {
            myMap.removeWhere((k, v) => v == value);
            print("Value removed");
          } else {
            print("Value not found");
          }

        } else if (option == 'b') {
          print("Enter key:");
          String key = stdin.readLineSync()!;

          if (myMap.containsKey(key)) {
            myMap.remove(key);
            print("Key removed");
          } else {
            print("Key not found");
          }
        }
        break;


      case 3:
        print("Enter old value:");
        int oldValue = int.parse(stdin.readLineSync()!);

        // check if old value exists
        if (myMap.containsValue(oldValue)) {

          print("Enter new value:");
          int newValue = int.parse(stdin.readLineSync()!);

          myMap.updateAll((key, value) {
            if (value == oldValue) {
              return newValue;
            }
            return value;
          });

          print("Value updated successfully");

        } else {
          print("Error: old value not found");
        }

        break;


      case 4:
        print("Map data:");
        myMap.forEach((k, v) {
          print("$k : $v");
        });
        break;


      case 5:
        print("Enter value to search:");
        int value = int.parse(stdin.readLineSync()!);

        bool found = false;

        myMap.forEach((k, v) {
          if (v == value) {
            print("Found - Key is: $k");
            found = true;
          }
        });

        if (!found) {
          print("Not found");
        }
        break;

      case 6:
        return;
    }
  }
}