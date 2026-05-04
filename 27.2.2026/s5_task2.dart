import 'dart:io';

main() {
  List<int> myList = [];
  bool showList = true;
  while (showList) {
    print(
      "1- Add Value \n2- Remove Value\n3- Update Value \n4- Show Value \n5- Search Value\n6- Exit",
    );
    int choice = int.parse(stdin.readLineSync()!);
    if (choice == 1) {
      print("Enter Number Of Values");
      int numberOfValues = int.parse(stdin.readLineSync()!);
      for (int i = 1; i <= numberOfValues; i++) {
        print("Enter Number $i ");
        myList.add(int.parse(stdin.readLineSync()!));
      }
      print("Current List = $myList");
    } else if (choice == 2) {
      print("a: Remove By Value \nb:Remove By Index");
      String choice2 = stdin.readLineSync()!;
      if (choice2 == "a") {
        print("Enter The Value You Want To Remove ");
        myList.remove(int.parse(stdin.readLineSync()!));
        print("Current List = $myList");
      } else if (choice2 == "b") {
        print("Enter The Index Of Value You Want To Remove ");
        myList.removeAt(int.parse(stdin.readLineSync()!));
      } else {
        print("Wrong Answer");
      }
    } else if (choice == 3) {
      print("Enter Old Value");
      int oldValue = int.parse(stdin.readLineSync()!);
      print("Enter New Value");
      int newValue = int.parse(stdin.readLineSync()!);
      for (int i = 0; i < myList.length; i++) {
        if (myList[i] == oldValue) {
          myList[i] = newValue;
          break;
        }
      }
      print("Current List = $myList");
    } else if (choice == 4) {
      print("Current List = $myList");
    } else if (choice == 5) {
      print("Enter The Value You Want To Search ");
      int valueToSearch = int.parse(stdin.readLineSync()!);
      if (myList.contains(valueToSearch)) {
        print("Value Founded At Index ${myList.indexOf(valueToSearch)}");
      } else {
        print("Value Not Founded");
      }
    } else if (choice == 6) {
      showList = false;
    }
  }
}
