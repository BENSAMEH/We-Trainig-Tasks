import 'dart:io';

main() {
  Map<String, int> myMap = {};
  print("Enter Map Size");
  int mapSize = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < mapSize; i++) {
    print("Enter Key Number ${i + 1}");
    String key = stdin.readLineSync()!;
    print("Enter Value Number ${i + 1}");
    int value = int.parse(stdin.readLineSync()!);
    myMap[key] = value;
  }
  print(myMap);
  int sum = 0;
  myMap.forEach((key, value) {
    sum = sum + value;
  });
  print("Sum = $sum");
  double avg = sum / mapSize;
  print("Average = $avg");
  List<int> valuesList = myMap.values.toList();
  valuesList.sort();

  int minValue = valuesList.first;
  int maxValue = valuesList.last;
  print("Max = $maxValue");
  print("Min = $minValue");
}
