main() {
  print("0 paramters ${result()} ");
  print("1 paramters ${result(num3: 5)}");
  print("2 paramters ${result(num2: 3, num4: 6)}");
  print("3 paramters ${result(num1: 4, num2: 5, num4: 10)}");
  print("4 paramters ${result(num2: 3, num4: 7, num1: 9, num3: 6)}");
}

double result({
  double num1 = 0,
  double num2 = 0,
  double num3 = 0,
  double num4 = 0,
}) {
  int paramtersNumber = 0;

  List<double> list = [num1, num2, num3, num4];

  for (double i in list) {
    if (i != 0) {
      paramtersNumber += 1;
    }
  }

  if (paramtersNumber == 0) {
    return 1;
  } else if (paramtersNumber == 1) {
    double number = 0;

    for (double i in list) {
      if (i != 0) {
        number = i;
      }
    }

    double result = 0;

    for (int i = 1; i <= number; i++) {
      result = result + i;
    }

    return result;
  } else if (paramtersNumber == 2) {
    List<double> numberList = [];

    for (double i in list) {
      if (i != 0) {
        numberList.add(i);
      }
    }

    numberList.sort();

    double result = numberList.last / numberList.first;

    return result;
  } else if (paramtersNumber == 3) {
    List<double> numberList = [];

    for (double i in list) {
      if (i != 0) {
        numberList.add(i);
      }
    }

    double result = 1;

    for (double i in numberList) {
      result *= i;
    }

    return result;
  } else if (paramtersNumber == 4) {
    double result = 0;

    for (double i in list) {
      result += i;
    }

    return result;
  } else {
    return 0;
  }
}
