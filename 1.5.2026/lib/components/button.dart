import 'package:flutter/material.dart';

class CalcBtn extends StatelessWidget {
  final Function() action;
  final String btnText;

  CalcBtn({required this.action, required this.btnText});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: MaterialButton(
          onPressed: action,
          color: Colors.grey[900],
          child: Text(
            btnText,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}