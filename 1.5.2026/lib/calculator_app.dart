import 'package:flutter/material.dart';
import 'components/button.dart';

class CalculatorApp extends StatefulWidget {
  const CalculatorApp({super.key});

  @override
  State<CalculatorApp> createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {
  String expression = "";
  String result = "0";

  void onClick(String value) {
    setState(() {
      if (value == "C") {
        expression = "";
        result = "0";
      } else if (value == "=") {
        calculate();
      } else {
        expression += value;
        result = expression;
      }
    });
  }

  void calculate() {
    try {
      List<String> numbers = expression.split(RegExp(r'[+\-*/]'));
      List<String> ops =
      expression.replaceAll(RegExp(r'[0-9]'), '').split('');

      double res = double.parse(numbers[0]);

      for (int i = 0; i < ops.length; i++) {
        double num = double.parse(numbers[i + 1]);

        if (ops[i] == "+") res += num;
        if (ops[i] == "-") res -= num;
        if (ops[i] == "*") res *= num;
        if (ops[i] == "/") res /= num;
      }

      result = res.toString();
      expression = result;
    } catch (e) {
      result = "Error";
    }
  }

  Widget buildBtn(String text) {
    return CalcBtn(
      btnText: text,
      action: () {
        onClick(text);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(backgroundColor: Colors.black,
        title: const Text("Calculator",style: TextStyle(color: Colors.white),),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.centerRight,
            padding: const EdgeInsets.all(20),
            child: Text(
              result,
              style: const TextStyle(
                fontSize: 32,
                color: Colors.white,
              ),
            ),
          ),

          Row(children: ["7", "8", "9", "/"].map(buildBtn).toList()),
          Row(children: ["4", "5", "6", "*"].map(buildBtn).toList()),
          Row(children: ["1", "2", "3", "-"].map(buildBtn).toList()),
          Row(children: ["0", "C", "=", "+"].map(buildBtn).toList()),
        ],
      ),
    );
  }
}