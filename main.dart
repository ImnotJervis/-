//계산기

import 'package:flutter/material.dart';


void main() => runApp(MyCalculatorUI());

class MyCalculatorUI extends StatelessWidget {
  final buttonLabels = [
    ['MC', 'MR', 'M+', 'M−', 'MS', 'M⁺'],
    ['%', 'CE', 'C', '⌫'],
    ['¹⁄ₓ', 'x²', '√x', '÷'],
    ['7', '8', '9', '×'],
    ['4', '5', '6', '−'],
    ['1', '2', '3', '+'],
    ['±', '0', '.', '='],
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: Text(
                  '0',
                  style: TextStyle(
                    fontSize: 60,
                    color: Colors.white,
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  children: buttonLabels.map((row) {
                    return Expanded(
                      child: Row(
                        children: row.map((label) {
                          return Expanded(
                            child: Container(
                              margin: EdgeInsets.all(1),
                              decoration: BoxDecoration(
                                color: label == '='
                                    ? Colors.lightBlue
                                    : Colors.grey[850],
                                borderRadius: label == '='
                                    ? BorderRadius.circular(6)
                                    : null,
                              ),
                              child: Center(
                                child: Text(
                                  label,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 22,
                                  ),
                                ),
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
